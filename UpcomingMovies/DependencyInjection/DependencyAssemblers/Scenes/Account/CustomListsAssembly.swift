//
//  CustomListsAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class CustomListsAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(CustomListsInteractorProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return CustomListsInteractor(useCaseProvider: useCaseProvider!)
        }
        
        container.register(CustomListsViewModelProtocol.self) { resolver in
            CustomListsViewModel(interactor: resolver.resolve(CustomListsInteractorProtocol.self)!)
        }
    }
    
}
