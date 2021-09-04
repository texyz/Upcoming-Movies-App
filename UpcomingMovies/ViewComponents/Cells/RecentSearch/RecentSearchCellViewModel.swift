//
//  RecentSearchCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

protocol RecentSearchCellViewModelProtocol {
    
    var searchText: String { get }
    
}

final class RecentSearchCellViewModel: RecentSearchCellViewModelProtocol {
    
    let searchText: String
    
    init(searchText: String) {
        self.searchText = searchText
    }
    
}
