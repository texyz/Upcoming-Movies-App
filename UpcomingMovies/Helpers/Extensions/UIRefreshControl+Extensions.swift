//
//  UIRefreshControl+Extensions.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

extension UIRefreshControl {
    
    func endRefreshing(with delay: TimeInterval = 0.5) {
        if isRefreshing {
            perform(#selector(UIRefreshControl.endRefreshing), with: nil, afterDelay: delay)
        }
    }
    
}
