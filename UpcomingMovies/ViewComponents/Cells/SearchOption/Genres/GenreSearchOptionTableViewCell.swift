//
//  GenreSearchOptionTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class GenreSearchOptionTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    var viewModel: GenreSearchOptionCellViewModelProtocol? {
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
        nameLabel.font = FontHelper.light(withSize: 14.0)
        nameLabel.textColor = ColorPalette.lightBlueColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        nameLabel.text = viewModel?.name
    }

}
