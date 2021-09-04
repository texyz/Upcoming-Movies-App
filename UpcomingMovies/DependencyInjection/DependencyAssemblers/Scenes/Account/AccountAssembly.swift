//
//  AccountAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class AccountAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AccountInteractorProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            let authHandler = resolver.resolve(AuthenticationHandlerProtocol.self)
            
            return AccountInteractor(useCaseProvider: useCaseProvider!,
                                     authHandler: authHandler!)
        }
        
        container.register(AccountViewModelProtocol.self) { resolver in
            AccountViewModel(interactor: resolver.resolve(AccountInteractorProtocol.self)!)
        }
    }
    
}
