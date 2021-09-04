//
//  CustomListsInteractor.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

class CustomListsInteractor: CustomListsInteractorProtocol {
    
    private let accountUseCase: AccountUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }
    
    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void) {
        accountUseCase.getCustomLists(page: page, completion: completion)
    }
    
}
