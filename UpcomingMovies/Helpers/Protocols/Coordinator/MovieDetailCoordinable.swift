//
//  MovieDetailCoordinable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

protocol MovieDetailCoordinable {
    
    func showMovieDetail(for movie: Movie)
    
}

extension MovieDetailCoordinable where Self: Coordinator {
    
    func showMovieDetail(for movie: Movie) {
        let coordinator = MovieDetailCoordinator(navigationController: navigationController)
        
        coordinator.movieInfo = .complete(movie: movie)
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
}
