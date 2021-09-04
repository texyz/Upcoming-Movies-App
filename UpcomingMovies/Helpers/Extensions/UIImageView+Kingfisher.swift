//
//  UIImageView+Kingfisher.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(with url: URL?) {
        kf.indicatorType = .activity
        kf.setImage(with: url)
    }

    func cancelImageDownload() {
        kf.cancelDownloadTask()
    }
    
}
