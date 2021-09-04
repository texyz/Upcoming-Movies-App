//
//  ProfileAccountInfoCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol ProfileAccountInforCellViewModelProtocol {
    
    var name: String { get }
    var username: String? { get }
    
}

final class ProfileAccountInforCellViewModel: ProfileAccountInforCellViewModelProtocol {
    
    let name: String
    let username: String?
    
    init(userAccount: User) {
        name = userAccount.name
        username = userAccount.username
    }
    
}
