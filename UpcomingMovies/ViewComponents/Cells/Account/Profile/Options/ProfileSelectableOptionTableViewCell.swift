//
//  ProfileSelectableOptionTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class ProfileSelectableOptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titlelabel: UILabel!
    
    var viewModel: ProfileSelectableOptionCellViewModelProtocol? {
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
        titlelabel.font = FontHelper.light(withSize: 16.0)
        titlelabel.textColor = ColorPalette.lightBlueColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        titlelabel.text = viewModel?.title
    }
    
}
