//
//  UIView+ToastUtils.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

extension UIView {

    func showSuccessToast(withMessage message: String, completion: ((Bool) -> Void)? = nil) {
        showToast(withMessage: message, defaultConfiguration: .success, completion: completion)
    }

    func showFailureToast(withMessage message: String, completion: ((Bool) -> Void)? = nil) {
        showToast(withMessage: message, defaultConfiguration: .failure, completion: completion)
    }

}
