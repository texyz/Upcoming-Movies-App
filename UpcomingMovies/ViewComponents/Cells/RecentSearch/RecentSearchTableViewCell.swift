//
//  RecentSearchTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class RecentSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var searchLabel: UILabel!
    
    static let identifier = "RecentSearchCell"
    
    var viewModel: RecentSearchCellViewModelProtocol? {
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
    
    fileprivate func setupUI() {
        setupSearchLabel()
    }
    
    fileprivate func setupSearchLabel() {
        searchLabel.font = FontHelper.Default.mediumLight
        searchLabel.textColor = ColorPalette.darkGrayColor
    }
    
    fileprivate func setupBindables() {
        searchLabel.text = viewModel?.searchText
    }
    
}
