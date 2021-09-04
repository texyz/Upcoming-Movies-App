//
//  DefaultSearchOptionCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

protocol DefaultSearchOptionCellViewModelProtocol {
    
    var title: String? { get }
    var subtitle: String? { get }
    
}

final class DefaultSearchOptionCellViewModel: DefaultSearchOptionCellViewModelProtocol {
    
    var title: String?
    var subtitle: String?
    
    init(defaultSearchOption: DefaultSearchOption) {
        title = defaultSearchOption.title
        subtitle = defaultSearchOption.subtitle
    }
    
}
