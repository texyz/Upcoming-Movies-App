//
//  SavedMovieCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol SavedMovieCellViewModelProtocol {
    
    var title: String { get }
    var backdropURL: URL? { get }
    
}

final class SavedMovieCellViewModel: SavedMovieCellViewModelProtocol {
    
    let title: String
    let backdropURL: URL?
    
    init(_ favorite: Movie) {
        title = favorite.title
        backdropURL = favorite.backdropURL
    }
    
}
