//
//  SplashAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.


import Foundation
import Swinject
import UpcomingMoviesDomain

final class SplashAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(SplashInteractorProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return SplashInteractor(useCaseProvider: useCaseProvider!)
        }
        
        container.register(SplashViewModelProtocol.self) { resolver in
            let interactor = resolver.resolve(SplashInteractorProtocol.self)
            let genreHandler = resolver.resolve(GenreHandlerProtocol.self)
            let configurationHandler = resolver.resolve(ConfigurationHandlerProtocol.self)
            
            return SplashViewModel(interactor: interactor!,
                                   genreHandler: genreHandler!,
                                   configurationHandler: configurationHandler!)
        }
    }
    
}
