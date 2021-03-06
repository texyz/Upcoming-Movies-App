//
//  ProfileAccountInfoTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class ProfileAccountInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    var viewModel: ProfileAccountInforCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        selectionStyle = .none
        setupLabels()
    }
    
    private func setupLabels() {
        usernameLabel.font = FontHelper.regular(withSize: 18.0)
        usernameLabel.textColor = ColorPalette.Label.defaultColor
        usernameLabel.textAlignment = .center
        
        nameLabel.font = FontHelper.light(withSize: 14.0)
        nameLabel.textColor = ColorPalette.lightGrayColor
        nameLabel.textAlignment = .center
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        usernameLabel.text = viewModel.username
        nameLabel.text = viewModel.name
    }
    
}
