//
//  MovieVideosMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

final class MockMovieVideosInteractor: MovieVideosInteractorProtocol {
    
    var getMovieVideosResult: Result<[Video], Error>?
    func getMovieVideos(for movieId: Int, page: Int?, completion: @escaping (Result<[Video], Error>) -> Void) {
        completion(getMovieVideosResult!)
    }
    
}
