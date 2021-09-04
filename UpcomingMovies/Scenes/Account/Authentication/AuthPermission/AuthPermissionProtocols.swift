//
//  AuthPermissionProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import WebKit

protocol AuthPermissionViewModelProtocol {
    
    var authPermissionURLRequest: URLRequest? { get }
    
}

protocol AuthPermissionCoordinatorProtocol: Coordinator {
    
    func dismiss(completion: (() -> Void)?)
    func didDismiss()
    
}

protocol AuthPermissionWebViewNavigationDelegate: WKNavigationDelegate {
    
    var didFinishNavigation: () -> Void { get set }
    
}
