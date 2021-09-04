//
//  AccountMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockAccountInteractor: AccountInteractorProtocol {
    
    var permissionURLResult: Result<URL, Error>?
    func getAuthPermissionURL(completion: @escaping (Result<URL, Error>) -> Void) {
        completion(permissionURLResult!)
    }
    
    var signInUserResult: Result<User, Error>?
    func signInUser(completion: @escaping (Result<User, Error>) -> Void) {
        completion(signInUserResult!)
    }
    
    var currentUserResult: User?
    func currentUser() -> User? {
        return currentUserResult
    }
    
    func signOutUser() {}
    
}
