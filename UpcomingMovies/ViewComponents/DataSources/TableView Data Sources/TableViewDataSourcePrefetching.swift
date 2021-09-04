//
//  TableViewDataSourcePrefetching.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class TableViewDataSourcePrefetching: NSObject, DataSourcePrefetching, UITableViewDataSourcePrefetching {
    
    var cellCount: Int
    var needsPrefetch: Bool
    var prefetchHandler: (() -> Void)
    
    init(cellCount: Int, needsPrefetch: Bool, prefetchHandler: @escaping (() -> Void)) {
        self.cellCount = cellCount
        self.needsPrefetch = needsPrefetch
        self.prefetchHandler = prefetchHandler
    }
    
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        prefetchIfNeeded(for: indexPaths)
    }

}
