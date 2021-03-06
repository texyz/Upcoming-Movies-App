//
//  SplashInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

struct SplashInteractor: SplashInteractorProtocol {
    
    private let genreUseCase: GenreUseCaseProtocol
    private let configurationUseCase: ConfigurationUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.genreUseCase = useCaseProvider.genreUseCase()
        self.configurationUseCase = useCaseProvider.configurationUseCase()
    }
    
    func getAppConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void) {
        configurationUseCase.getConfiguration(completion: completion)
    }
    
    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void) {
        genreUseCase.fetchAll(completion: completion)
    }
    
}
