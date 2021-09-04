//
//  MovieReviewsInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

final class MovieReviewsInteractor: MovieReviewsInteractorProtocol {
        
    private let movieUseCase: MovieUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
    }
    
    func getMovieReviews(for movieId: Int, page: Int?, completion: @escaping (Result<[Review], Error>) -> Void) {
        movieUseCase.getMovieReviews(for: movieId, page: page, completion: completion)
    }
    
}
