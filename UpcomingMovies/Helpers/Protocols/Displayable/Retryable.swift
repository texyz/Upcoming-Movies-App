//
//  Retryable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

private struct AssociatedKeys {
    static var retryView: RetryPlaceHolderable?
}

protocol Retryable: AnyObject { }

extension Retryable where Self: UIViewController {
    
    private(set) var retryView: RetryPlaceHolderable? {
        get {
            guard let value = objc_getAssociatedObject(self, &AssociatedKeys.retryView) as? RetryPlaceHolderable else {
                return nil
            }
            return value
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.retryView, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func presentRetryView(with errorMessage: String?, errorHandler: @escaping () -> Void) {
        let isPresented = retryView?.isPresented ?? false
        if isPresented {
            self.retryView?.resetState()
        } else {
            self.retryView = ErrorPlaceholderView.loadFromNib()
            retryView?.retry = errorHandler
            retryView?.detailText = errorMessage
            self.retryView?.show(in: self.view, animated: true, completion: nil)
        }
    }
    
    func hideRetryView() {
        retryView?.hide(animated: true, completion: nil)
    }
    
}
