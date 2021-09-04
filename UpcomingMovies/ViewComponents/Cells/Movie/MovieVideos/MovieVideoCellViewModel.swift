//
//  MovieVideoCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieVideoCellViewModelProtocol {
    
    var name: String { get }
    var key: String { get }
    var thumbnailURL: URL? { get }
    
}

final class MovieVideoCellViewModel: MovieVideoCellViewModelProtocol {
    
    let name: String
    let key: String
    let thumbnailURL: URL?
    
    init(_ video: Video) {
        name = video.name
        key = video.key
        thumbnailURL = video.thumbnailURL
    }
    
}
