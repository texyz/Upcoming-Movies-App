//
//  ImageTransitionable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

protocol Transitionable: UIViewController {
    
    var transitionContainerView: UIView! { get }
    
}
