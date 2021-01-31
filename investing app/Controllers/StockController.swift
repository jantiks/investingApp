//
//  StockController.swift
//  investing app
//
//  Created by Tigran on 1/31/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class StockController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting navigation controller
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font: UIFont(descriptor: .preferredFontDescriptor(withTextStyle: .caption1), size: 25)]
        let leftBarItem = UIBarButtonItem(customView: searchBar)
        navigationItem.leftBarButtonItem = leftBarItem
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? StockCell else { fatalError("couldn't load cell") }
        
        return cell
    }
    
    

}
