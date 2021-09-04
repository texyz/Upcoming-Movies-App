//
//  CollectionViewCellAnimator.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class CollectionViewCellAnimator {
    
    class func fadeAnimate(cell: UICollectionViewCell) {
        let view = cell.contentView
        view.layer.opacity = 0.1
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: .allowUserInteraction, animations: {
            view.layer.opacity = 1
        }, completion: nil)
    }
    
}
