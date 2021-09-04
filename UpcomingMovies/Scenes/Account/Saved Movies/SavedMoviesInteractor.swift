//
//  SavedMoviesInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

final class FavoritesSavedMoviesInteractor: SavedMoviesInteractorProtocol {
    
    private let accountUseCase: AccountUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }
    
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        accountUseCase.getFavoriteList(page: page, completion: completion)
    }
    
}

final class WatchListSavedMoviesInteractor: SavedMoviesInteractorProtocol {
    
    private let accountUseCase: AccountUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }
    
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        accountUseCase.getWatchList(page: page, completion: completion)
    }
    
}
