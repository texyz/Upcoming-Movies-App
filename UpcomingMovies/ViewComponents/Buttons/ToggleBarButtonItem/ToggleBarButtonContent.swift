//
//  ToggleBarButtonItemState.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

struct ToggleBarButtonItemContent {
    
    let display: ToggleBarButtonItemDisplay
    let accessibilityLabel: String?
    let accessibilityHint: String?
    
    init(display: ToggleBarButtonItemDisplay,
         accessibilityLabel: String? = nil,
         accessibilityHint: String? = nil) {
        self.display = display
        self.accessibilityLabel = accessibilityLabel
        self.accessibilityHint = accessibilityHint
    }
    
}
