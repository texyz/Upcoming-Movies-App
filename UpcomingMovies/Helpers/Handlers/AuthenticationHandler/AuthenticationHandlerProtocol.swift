//
//  AuthenticationHandlerProtocol.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

protocol AuthenticationHandlerProtocol {

    func currentUser() -> User?
    func isUserSignedIn() -> Bool
    func deleteCurrentUser()

}
