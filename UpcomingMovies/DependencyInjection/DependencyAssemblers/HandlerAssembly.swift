//
//  HandlerAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain
import Swinject

final class HandlerAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AuthenticationHandlerProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return AuthenticationHandler(authUseCase: useCaseProvider!.authUseCase(),
                                         userUseCase: useCaseProvider!.userUseCase())
        }.inObjectScope(.container)
        
        container.register(NavigationHandlerProtocol.self) { _ in
            NavigationHandler()
        }.inObjectScope(.container)
        
        container.register(GenreHandlerProtocol.self) { _ in
            GenreHandler()
        }.inObjectScope(.container)
        
        container.register(ConfigurationHandlerProtocol.self) { _ in
            ConfigurationHandler()
        }.inObjectScope(.container)
    }
    
}
