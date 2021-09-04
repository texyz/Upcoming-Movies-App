//
//  UpcomingMoviesViewFactory.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class UpcomingMoviesViewFactory {
    
    class func makeGridBarButtonItem() -> ToggleBarButtonItem {
        let preview = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "List")),
                                                 accessibilityLabel: LocalizedStrings.expandMovieCellsHint())
        let detail = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "Grid")),
                                                accessibilityLabel: LocalizedStrings.collapseMovieCellsHint())
        
        return ToggleBarButtonItem(contents: [preview, detail])
    }
    
}
