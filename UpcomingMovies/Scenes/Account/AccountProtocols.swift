//
//  AccountProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import UpcomingMoviesDomain

protocol AccountViewModelProtocol {
    
    var showAuthPermission: Bindable<URL?> { get }
    var didSignIn: (() -> Void)? { get set }
    var didReceiveError: (() -> Void)? { get set }
    
    func startAuthorizationProcess()
    func signInUser()
    func signOutCurrentUser()
    
    func isUserSignedIn() -> Bool
    func currentUser() -> User?
    
}

protocol AccountInteractorProtocol {
    
    func getAuthPermissionURL(completion: @escaping (Result<URL, Error>) -> Void)
    func signInUser(completion: @escaping (Result<User, Error>) -> Void)
    func signOutUser()
    func currentUser() -> User?
    
}

protocol AccountCoordinatorProtocol: AnyObject {
    
    func embedSignInViewController(on parentViewController: AccountViewControllerProtocol) -> SignInViewController
    func embedProfileViewController(on parentViewController: AccountViewControllerProtocol,
                                    for user: User?) -> ProfileViewController
    func removeChildViewController<T: UIViewController>(_ viewController: inout T?,
                                                        from parentViewController: UIViewController)
    
    func showAuthPermission(for authPermissionURL: URL?,
                            and authPermissionDelegate: AuthPermissionViewControllerDelegate)
    
    func showCollectionOption(_ collectionOption: ProfileCollectionOption)
    func showGroupOption(_ groupOption: ProfileGroupOption)
    
}

protocol AccountViewControllerProtocol: UIViewController, SignInViewControllerDelegate, ProfileViewControllerDelegate {
}
