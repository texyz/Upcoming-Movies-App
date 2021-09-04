//
//  Entities+GenreName.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

protocol GenreNameable {
    
    var genreId: Int? { get }
    var genreName: String? { get }
    
}

extension GenreNameable {
    
    var genreHandler: GenreHandlerProtocol {
        DIContainer.shared.resolve()
    }
    
    var genreName: String? {
        guard let genreId = genreId,
              let genreName = genreHandler.getGenreName(for: genreId) else {
            return "-"
        }
        return genreName
    }
    
}

extension Movie: GenreNameable {
    
    var genreId: Int? {
        return genreIds?.first
    }
    
}
