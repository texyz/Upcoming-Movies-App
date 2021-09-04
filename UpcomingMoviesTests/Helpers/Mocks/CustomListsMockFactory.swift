//
//  CustomListsMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockCustomListsInteractor: CustomListsInteractorProtocol {
    
    var getCustomListsResult: Result<[List], Error>!
    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void) {
        completion(getCustomListsResult!)
    }
    
}
