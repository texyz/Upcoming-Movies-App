//
//  MovieCreditsCoordinator.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class MovieCreditsCoordinator: NSObject, Coordinator, MovieCreditsCoordinatorProtocol {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    var movieId: Int!
    var movieTitle: String!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieCreditsViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(arguments: movieId, movieTitle)
        viewController.coordinator = self
        
        navigationController.delegate = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
}

// MARK: - UINavigationControllerDelegate

extension MovieCreditsCoordinator: UINavigationControllerDelegate {
    
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
