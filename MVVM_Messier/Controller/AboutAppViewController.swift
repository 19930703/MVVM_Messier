//
//  AboutAppViewController.swift
//  MVVM2
//
//  Created by Vijay Bhaskar on 25/02/21.
//


import UIKit

class AboutAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guidelinesButtonTapped(_ sender: Any) {
        
        if let url = URL(string: "https://www.nasa.gov/multimedia/guidelines/index.html") {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
