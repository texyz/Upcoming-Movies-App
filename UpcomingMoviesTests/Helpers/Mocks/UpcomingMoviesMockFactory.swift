//
//  UpcomingMoviesMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockUpcomingMoviesInteractor: MoviesInteractorProtocol {
    
    var displayTitle: String = "Upcoming Movies"

    var upcomingMovies: Result<[UpcomingMoviesDomain.Movie], Error>?
    func getMovies(page: Int, completion: @escaping (Result<[UpcomingMoviesDomain.Movie], Error>) -> Void) {
        completion(upcomingMovies!)
    }
    
}
