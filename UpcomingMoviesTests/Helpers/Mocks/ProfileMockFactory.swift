//
//  ProfileMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockProfileInteractor: ProfileInteractorProtocol {
    
    var getAccountDetailResult: Result<User, Error>?
    func getAccountDetail(completion: @escaping (Result<User, Error>) -> Void) {
        completion(getAccountDetailResult!)
    }
    
}

class MockProfileViewFactory: ProfileFactoryProtocol {
    
    var sections: [ProfileSection] = []
    
    var collectionOptions: [ProfileCollectionOption] = []
    
    var groupOptions: [ProfileGroupOption] = []
    
    var configurationOptions: [ProfileConfigurationOption] = []
    
}
