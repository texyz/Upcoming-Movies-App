//
//  AuthPermissionWebViewNavigation.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import WebKit

class AuthPermissionWebViewNavigation: NSObject, AuthPermissionWebViewNavigationDelegate {
    
    var didFinishNavigation: () -> Void
    
    // MARK: - Initializers
    
    init(didFinishNavigation: @escaping () -> Void) {
        self.didFinishNavigation = didFinishNavigation
    }
    
    // MARK: - WKNavigationDelegate
    
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationResponse: WKNavigationResponse,
                 decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        didFinishNavigation()
    }
    
}
