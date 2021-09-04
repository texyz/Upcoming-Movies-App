//
//  MovieCreditsFactory.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

final class MovieCreditsFactory: MovieCreditsFactoryProtocol {
    
    var sections = [MovieCreditsCollapsibleSection(type: .cast, opened: true),
                    MovieCreditsCollapsibleSection(type: .crew, opened: false)]
    
}
