//
//  MovieCreditCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieCreditCellViewModelProtocol {
    
    var name: String { get }
    var role: String { get }
    var profileURL: URL? { get }
    
}

final class MovieCreditCellViewModel: MovieCreditCellViewModelProtocol {
    
    let name: String
    let role: String
    let profileURL: URL?
    
    init(cast: Cast) {
        name = cast.name
        role = cast.character
        profileURL = cast.profileURL
    }
    
    init(crew: Crew) {
        name = crew.name
        role = crew.job
        profileURL = crew.profileURL
    }
    
}
