//
//  GenreHandlerProtocol.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

/**
 * Provides methods to access the movie genres names
 * because they are not always sent to us through the endpoints.
 */
protocol GenreHandlerProtocol {

    func setGenres(_ genres: [Genre])
    func getGenreName(for genreId: Int) -> String?

}
