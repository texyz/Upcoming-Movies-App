//
//  GenreHandler.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

final class GenreHandler: GenreHandlerProtocol {
    
    private var genres: [Genre] = []
    
    init() {}
    
    func setGenres(_ genres: [Genre]) {
        self.genres = genres
    }
    
    func getGenreName(for genreId: Int) -> String? {
        guard let genre = genres.filter({ $0.id == genreId }).first else { return nil }
        return genre.name
    }
    
}
