//
//  ProfileSelectableOptionCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol ProfileSelectableOptionCellViewModelProtocol {
    
    var title: String? { get }
    
}

final class ProfileSelectableOptionCellViewModel: ProfileSelectableOptionCellViewModelProtocol {
    
    let title: String?
    
    init(_ profileCollectionOption: ProfileOptionProtocol) {
        self.title = profileCollectionOption.title
    }
    
}
