//
//  RecentlyVisitedMoviesCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

protocol RecentlyVisitedMoviesCellViewModelProtocol {
    
    var visitedMovieCells: [VisitedMovieCellViewModelProtocol] { get }
    
}

final class RecentlyVisitedMoviesCellViewModel: RecentlyVisitedMoviesCellViewModelProtocol {
    
    var visitedMovieCells: [VisitedMovieCellViewModelProtocol]
    
    init(visitedMovieCells: [VisitedMovieCellViewModelProtocol]) {
        self.visitedMovieCells = visitedMovieCells
    }
    
}
