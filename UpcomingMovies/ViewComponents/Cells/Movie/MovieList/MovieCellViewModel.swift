//
//  MovieCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieCellViewModelProtocol {
    
    var name: String { get }
    var genreName: String? { get }
    var releaseDate: String? { get }
    var posterURL: URL? { get }
    var voteAverage: Double? { get }
    
}

final class MovieCellViewModel: MovieCellViewModelProtocol {
    
    let name: String
    let genreName: String?
    let releaseDate: String?
    let posterURL: URL?
    let voteAverage: Double?

    init(_ movie: Movie) {
        self.name = movie.title
        self.genreName = movie.genreName
        self.releaseDate = movie.releaseDate
        self.voteAverage = movie.voteAverage
        self.posterURL = movie.posterURL
    }
    
}
