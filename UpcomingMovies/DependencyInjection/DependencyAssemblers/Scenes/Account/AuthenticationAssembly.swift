//
//  AuthenticationAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import Swinject

final class AuthenticationAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AuthPermissionViewModelProtocol.self) { (_, authPermissionURL: URL?) in
            AuthPermissionViewModel(authPermissionURL: authPermissionURL)
        }
    }
    
}
