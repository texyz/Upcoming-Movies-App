//
//  MovieCreditsViewSection.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

struct MovieCreditsCollapsibleSection {
    let type: MovieCreditsViewSection
    var opened: Bool
}

enum MovieCreditsViewSection {
    case cast, crew
    
    var title: String {
        switch self {
        case .cast:
            return LocalizedStrings.cast()
        case .crew:
            return LocalizedStrings.crew()
        }
    }
    
}
