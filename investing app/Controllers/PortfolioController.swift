//
//  PortfolioController.swift
//  investing app
//
//  Created by Tigran on 1/29/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class PortfolioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    //number of section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //returns rows in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return 5
        }
        return 1
    }
    
    //tableview cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 2 {
            cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! StockCell
            return cell
        }
        cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
        
    }
    
    //headers for sections
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "My Balance"
        } else if section == 1 {
            return "Free Money"
        }
        return "Stocks"
    }
    
    

}
