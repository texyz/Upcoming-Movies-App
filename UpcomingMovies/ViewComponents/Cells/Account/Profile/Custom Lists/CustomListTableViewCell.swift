//
//  CustomListTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class CustomListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var viewModel: CustomListCellViewModelProtocol? {
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
        setupLabels()
    }
    
    private func setupLabels() {
        nameLabel.textColor = ColorPalette.lightBlueColor
        nameLabel.font = FontHelper.regular(withSize: 18.0)
        
        descriptionLabel.textColor = ColorPalette.lightBlueColor
        descriptionLabel.font = FontHelper.light(withSize: 15.0)
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        nameLabel.text = viewModel?.name
        if let description = viewModel?.description {
            descriptionLabel.text = description
        } else {
            descriptionLabel.isHidden = true
        }
    }
    
}
