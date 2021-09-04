//
//  SimilarMoviesCoordinator.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import UpcomingMoviesDomain

final class SimilarMoviesCoordinator: NSObject, MovieListCoordinatorProtocol, Coordinator, MovieDetailCoordinable, UINavigationControllerDelegate {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    var movieId: Int!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieListViewController.instantiate()
        
        viewController.viewModel = DIContainer.shared.resolve(name: "SimilarMovies",
                                                              arguments: LocalizedStrings.similarMoviesTitle.localized, movieId)
        viewController.coordinator = self
        
        navigationController.delegate = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        // Check whether our view controller array already contains that view controller.
        // If it does it means we’re pushing a different view controller on top rather than popping it, so exit.
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        unwrappedParentCoordinator.childDidFinish()
    }
    
}
