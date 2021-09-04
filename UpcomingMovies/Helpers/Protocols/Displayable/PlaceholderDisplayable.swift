//
//  PlaceholderDisplayable.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

typealias Placeholderable = Displayable & Detailable
typealias RetryPlaceHolderable = Displayable & Detailable & RetryActionable

protocol PlaceholderDisplayable: Retryable, Emptiable {}

extension PlaceholderDisplayable where Self: UIViewController {
    
    func hideDisplayedPlaceholderView() {
        hideEmptyView()
        hideRetryView()
    }
    
}
