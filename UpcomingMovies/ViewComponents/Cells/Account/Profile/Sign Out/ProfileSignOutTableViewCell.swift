//
//  ProfileSignOutTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class ProfileSignOutTableViewCell: UITableViewCell {
    
    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        textLabel?.text = LocalizedStrings.signOut()
        textLabel?.textAlignment = .center
        textLabel?.textColor = ColorPalette.redColor
        textLabel?.font = FontHelper.light(withSize: 16.0)
    }
    
}
