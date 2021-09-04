//
//  DefaultSearchOptionTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class DefaultSearchOptionTableViewCell: UITableViewCell {
    
    var viewModel: DefaultSearchOptionCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        textLabel?.font = FontHelper.regular(withSize: 16.0)
        textLabel?.textColor = ColorPalette.lightBlueColor
        
        detailTextLabel?.font = FontHelper.light(withSize: 13.0)
        detailTextLabel?.textColor = ColorPalette.lightBlueColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        textLabel?.text = viewModel?.title
        detailTextLabel?.text = viewModel?.subtitle
    }

}
