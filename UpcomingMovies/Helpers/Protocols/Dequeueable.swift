//
//  Dequeueable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

protocol Dequeueable {
    
    static var dequeueIdentifier: String { get }
    
}

extension Dequeueable where Self: UIView {
    
    static var dequeueIdentifier: String {
        return String(describing: self)
    }
    
}

extension UITableViewCell: Dequeueable { }

extension UICollectionViewCell: Dequeueable { }
