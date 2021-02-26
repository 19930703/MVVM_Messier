//
//  ViewController.swift
//  MVVM2
//
//  Created by Vijay Bhaskar on 25/02/21.
//


import UIKit

// MARK: - View Controller

class ViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // #1 - The UITableViewDataSource and
        // UITableViewDelegate protocols are not
        // adopted in extensions.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailSegue" {
            
            if let destinationViewController = segue.destination as? DetailViewController
            {
                let indexPath = self.tableView.indexPathForSelectedRow!
                let index = indexPath.row
                // #2 - The ViewModel is the app's de facto data source.
                // The ViewModel data for the currently-selected table
                // view cell representing a Messier object is passed to
                // a detail view controller via a segue.
                destinationViewController.messierViewModel = messierViewModel[index]
            }
        }
        
    } // end func prepare

} // end class ViewController
