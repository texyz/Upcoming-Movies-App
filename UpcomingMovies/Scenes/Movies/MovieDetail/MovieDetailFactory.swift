//
//  MovieDetailFactory.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class MovieDetailFactory: MovieDetailFactoryProtocol {

    var options: [MovieDetailOption] {
        return [.reviews,
                .trailers,
                .credits,
                .similarMovies]
    }
    
}
