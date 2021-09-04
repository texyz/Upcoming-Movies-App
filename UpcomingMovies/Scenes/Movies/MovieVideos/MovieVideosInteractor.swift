//
//  MovieVideosInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

struct MovieVideosInteractor: MovieVideosInteractorProtocol {
    
    private let movieUseCase: MovieUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
    }
    
    func getMovieVideos(for movieId: Int, page: Int?, completion: @escaping (Result<[Video], Error>) -> Void) {
        movieUseCase.getMovieVideos(for: movieId, page: page, completion: completion)
    }
    
}
