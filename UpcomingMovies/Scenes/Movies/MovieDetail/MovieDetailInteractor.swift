//
//  MovieDetailInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

class MovieDetailInteractor: MovieDetailInteractorProtocol {
    
    private let movieUseCase: MovieUseCaseProtocol
    private let movieVisitUseCase: MovieVisitUseCaseProtocol
    private let genreUseCase: GenreUseCaseProtocol
    private let accountUseCase: AccountUseCaseProtocol
    
    private let authHandler: AuthenticationHandlerProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol, authHandler: AuthenticationHandlerProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
        self.movieVisitUseCase = useCaseProvider.movieVisitUseCase()
        self.genreUseCase = useCaseProvider.genreUseCase()
        self.accountUseCase = useCaseProvider.accountUseCase()
        self.authHandler = authHandler
    }
    
    func isUserSignedIn() -> Bool {
        return authHandler.isUserSignedIn()
    }
    
    func findGenre(with id: Int, completion: @escaping (Result<Genre?, Error>) -> Void) {
        genreUseCase.find(with: id, completion: completion)
    }
    
    func getMovieDetail(for movieId: Int, completion: @escaping (Result<Movie, Error>) -> Void) {
        movieUseCase.getMovieDetail(for: movieId, completion: completion)
    }
    
    func markMovieAsFavorite(movieId: Int, favorite: Bool, completion: @escaping (Result<Bool, Error>) -> Void) {
        accountUseCase.markMovieAsFavorite(movieId: movieId, favorite: favorite, completion: completion)
    }
    
    func isMovieInFavorites(for movieId: Int, completion: @escaping (Result<Bool, Error>) -> Void) {
        movieUseCase.isMovieInFavorites(for: movieId, completion: completion)
    }
    
    func saveMovieVisit(with id: Int, title: String, posterPath: String?) {
        movieVisitUseCase.save(with: id, title: title, posterPath: posterPath)
    }
    
}
