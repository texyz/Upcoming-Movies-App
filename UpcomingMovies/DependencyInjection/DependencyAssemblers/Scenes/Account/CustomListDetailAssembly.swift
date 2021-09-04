//
//  CustomListDetailAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class CustomListDetailAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(CustomListDetailInteractorProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return CustomListDetailInteractor(useCaseProvider: useCaseProvider!)
        }
        
        container.register(CustomListDetailViewModelProtocol.self) { (resolver, list: List?) in
            let interactor = resolver.resolve(CustomListDetailInteractorProtocol.self)
            return CustomListDetailViewModel(list!, interactor: interactor!)
        }
    }
    
}
