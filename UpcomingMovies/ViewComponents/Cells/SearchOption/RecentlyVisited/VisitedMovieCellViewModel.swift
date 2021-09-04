//
//  VisitedMovieCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol VisitedMovieCellViewModelProtocol {
    
    var posterURL: URL? { get }
    
}

final class VisitedMovieCellViewModel: VisitedMovieCellViewModelProtocol {
    
    var posterURL: URL?
    
    init(movieVisit: MovieVisit) {
        let posterPath = movieVisit.posterPath
        posterURL = URL(string: posterPath)
    }
    
}
