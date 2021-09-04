//
//  UpcomingMoviesInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

struct UpcomingMoviesInteractor: MoviesInteractorProtocol {
    
    private let movieUseCase: MovieUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
    }
    
    func getMovies(page: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
        movieUseCase.getUpcomingMovies(page: page, completion: completion)
    }
    
}
