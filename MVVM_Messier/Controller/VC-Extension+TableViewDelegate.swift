//
//  VC-Extension+TableViewDelegate.swift
//  MVVM2
//
//  Created by Vijay Bhaskar on 25/02/21.
//


import Foundation

import UIKit

// MARK: - UITableView Delegate

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

