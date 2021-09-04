//
//  MovieCreditsMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockMovieCreditsInteractor: MovieCreditsInteractorProtocol {
    
    var getMovieCreditsResult: Result<MovieCredits, Error>?
    func getMovieCredits(for movieId: Int, page: Int?, completion: @escaping (Result<MovieCredits, Error>) -> Void) {
        completion(getMovieCreditsResult!)
    }
    
}

class MockMovieCreditsFactory: MovieCreditsFactoryProtocol {
    
    var sections: [MovieCreditsCollapsibleSection] = []

}
