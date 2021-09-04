//
//  GenreSearchOptionCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol GenreSearchOptionCellViewModelProtocol {
    
    var id: Int { get }
    var name: String? { get }
    
}

final class GenreSearchOptionCellViewModel: GenreSearchOptionCellViewModelProtocol {
    
    var id: Int
    var name: String?
    
    init(genre: Genre) {
        id = genre.id
        name = genre.name
    }
    
}
