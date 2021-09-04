//
//  MovieVideosProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieVideosViewModelProtocol {
    
    var movieTitle: String { get set }
    
    var viewState: Bindable<SimpleViewState<Video>> { get }
    var startLoading: Bindable<Bool> { get }
    
    var videoCells: [MovieVideoCellViewModelProtocol] { get }
    
    func videoURL(at index: Int) -> URL?
    func getMovieVideos(showLoader: Bool)
    
}

protocol MovieVideosInteractorProtocol {
    
    func getMovieVideos(for movieId: Int, page: Int?,
                        completion: @escaping (Result<[Video], Error>) -> Void)
    
}

protocol MovieVideosCoordinatorProtocol: AnyObject {}
