//
//  MovieReviewsMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

final class MockMovieReviewsInteractor: MovieReviewsInteractorProtocol {
    
    var getMovieReviewsResult: Result<[Review], Error>?
    func getMovieReviews(for movieId: Int, page: Int?, completion: @escaping (Result<[Review], Error>) -> Void) {
        completion(getMovieReviewsResult!)
    }
    
}
