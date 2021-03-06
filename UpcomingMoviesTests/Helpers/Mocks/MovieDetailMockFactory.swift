//
//  MovieDetailMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockMovieDetailInteractor: MovieDetailInteractorProtocol {
    
    var isUserSignedInResult: Bool? = false
    func isUserSignedIn() -> Bool {
        return isUserSignedInResult!
    }
    
    var findGenreResult: Result<Genre?, Error>? = .success(nil)
    func findGenre(with id: Int, completion: @escaping (Result<Genre?, Error>) -> Void) {
        completion(findGenreResult!)
    }
    
    var getMovieDetailResult: Result<Movie, Error>?
    func getMovieDetail(for movieId: Int, completion: @escaping (Result<Movie, Error>) -> Void) {
        completion(getMovieDetailResult!)
    }
    
    var markMovieAsFavoriteResult: Result<Bool, Error>?
    func markMovieAsFavorite(movieId: Int, favorite: Bool, completion: @escaping (Result<Bool, Error>) -> Void) {
        completion(markMovieAsFavoriteResult!)
    }
    
    var isMovieInFavoritesResult: Result<Bool, Error>?
    func isMovieInFavorites(for movieId: Int, completion: @escaping (Result<Bool, Error>) -> Void) {
        completion(isMovieInFavoritesResult!)
    }
    
    func saveMovieVisit(with id: Int, title: String, posterPath: String?) {}
    
}

class MockMovieDetailViewFactory: MovieDetailFactoryProtocol {
    
    var options: [MovieDetailOption] = []
    
}
