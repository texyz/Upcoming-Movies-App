//
//  SavedMoviesMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockSavedMoviesInteractor: SavedMoviesInteractorProtocol {
    
    var getSavedMoviesResult: Result<[Movie], Error>?
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        completion(getSavedMoviesResult!)
    }
    
}
