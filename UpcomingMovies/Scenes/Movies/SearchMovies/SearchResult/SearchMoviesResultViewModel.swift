//
//  SearchMoviesResultViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

final class SearchMoviesResultViewModel: SearchMoviesResultViewModelProtocol {
    
    // MARK: - Properties

    private let interactor: SearchMoviesResultInteractorProtocol
    
    let viewState: Bindable<SearchMoviesResultViewState> = Bindable(.initial)
    
    // MARK: - Computed Properties
    
    private var movies: [Movie] {
        return viewState.value.currentSearchedMovies
    }
    
    var recentSearchCells: [RecentSearchCellViewModelProtocol] {
        let searches = interactor.getMovieSearches().prefix(5)
        return searches.map { RecentSearchCellViewModel(searchText: $0.searchText) }
    }
    
    var movieCells: [MovieCellViewModelProtocol] {
        return movies.compactMap { MovieCellViewModel($0)}
    }
    
    // MARK: - Initilalizers
    
    init(interactor: SearchMoviesResultInteractorProtocol) {
        self.interactor = interactor
    }
    
    // MARK: - Movies handling
    
    func searchMovies(withSearchText searchText: String) {
        viewState.value = .searching
        interactor.saveSearchText(searchText)
        interactor.searchMovies(searchText: searchText,
                                  page: nil, completion: { result in
            switch result {
            case .success(let movies):
                self.viewState.value = movies.isEmpty ? .empty : .populated(movies)
            case .failure(let error):
                self.viewState.value = .error(error)
            }
        })
    }
    
    func clearMovies() {
        viewState.value = .initial
    }
    
    // MARK: - Movie detail builder
    
    func searchedMovie(at index: Int) -> Movie {
        return movies[index]
    }
}
