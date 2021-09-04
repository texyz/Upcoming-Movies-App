//
//  SavedMoviesProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol SavedMoviesViewModelProtocol {
    
    var displayTitle: String? { get set }
    
    var movieCells: [SavedMovieCellViewModelProtocol] { get }
    var needsPrefetch: Bool { get }
    
    var startLoading: Bindable<Bool> { get }
    var viewState: Bindable<SimpleViewState<Movie>> { get }
    
    func getCollectionList()
    func refreshCollectionList()
    
    func movie(at index: Int) -> Movie
    
}

protocol SavedMoviesInteractorProtocol {
    
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void)
    
}

protocol SavedMoviesCoordinatorProtocol: AnyObject {
    
    func showMovieDetail(for movie: Movie)
    
}
