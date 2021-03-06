//
//  TopRatedMoviesCoordinator.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import UpcomingMoviesDomain

final class TopRatedMoviesCoordinator: MovieListCoordinatorProtocol, Coordinator, MovieDetailCoordinable {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieListViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(name: "TopRatedMovies",
                                                              argument: LocalizedStrings.topRatedMoviesTitle())
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
