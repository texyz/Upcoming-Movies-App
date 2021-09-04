//
//  Keyboardable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

protocol Keyboardable {}

extension Keyboardable where Self: UIViewController {
    
    func registerKeyboardWillShowNotification(using block: ((CGRect) -> Void)? = nil) {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                               object: nil, queue: nil,
                                               using: { (notification) -> Void in
            guard let keyboardFrame: CGRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
                return
            }
            block?(keyboardFrame)
        })
    }
    
    func registerKeyboardWillHideNotification(using block: (() -> Void)? = nil) {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                               object: nil, queue: nil,
                                               using: { _ -> Void in
            block?()
        })
    }
    
}
