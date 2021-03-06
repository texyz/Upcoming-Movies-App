//
//  UpcomingMoviesCoordinator.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import UpcomingMoviesDomain

struct NavigationConfiguration {
    
    let selectedFrame: CGRect
    let imageToTransition: UIImage?
    let transitionOffset: CGFloat
    
    init(selectedFrame: CGRect, imageToTransition: UIImage?, transitionOffset: CGFloat) {
        self.selectedFrame = selectedFrame
        self.imageToTransition = imageToTransition
        self.transitionOffset = transitionOffset
    }
    
}

final class UpcomingMoviesCoordinator: NSObject, UpcomingMoviesCoordinatorProtocol, RootCoordinator, MovieDetailCoordinable {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    var navigationDelegate: UpcomingMoviesNavigationDelegate!

    // MARK: - Initializers

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Coordinator

    var rootIdentifier: String {
        return RootCoordinatorIdentifier.upcomingMovies
    }
    
    func start() {
        let viewController = UpcomingMoviesViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve()
        viewController.coordinator = self
        
        setupNavigationDelegate()
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showMovieDetail(for movie: Movie, with navigationConfiguration: NavigationConfiguration?) {
        configureNavigationDelegate(with: navigationConfiguration)
        
        showMovieDetail(for: movie)
    }
    
    // MARK: - Navigation Configuration
    
    private func setupNavigationDelegate() {
        // We only configure the delegate if it is needed.
        guard navigationController.delegate == nil else { return }
        
        navigationDelegate = UpcomingMoviesNavigation()
        navigationDelegate.parentCoordinator = self
        
        navigationController.delegate = navigationDelegate
    }
    
    private func configureNavigationDelegate(with navigationConfiguration: NavigationConfiguration?) {
        guard let navigationConfiguration = navigationConfiguration else { return }
        setupNavigationDelegate()
        
        navigationDelegate.configure(selectedFrame: navigationConfiguration.selectedFrame,
                                     with: navigationConfiguration.imageToTransition)
        navigationDelegate.updateOffset(navigationConfiguration.transitionOffset)
    }
    
}
