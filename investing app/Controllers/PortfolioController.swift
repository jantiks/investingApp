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
    
    //returns rows in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //tableview cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Balance", for: indexPath) as? BalanceCell else { fatalError("couldn't load cell") }
            cell.amount = "12000$"
            cell.title = "Balance"
            return cell
            
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? StockCell else { fatalError("couldn't load cell") }
            cell.stockName = "Bitcoin"
            cell.stockPrice = "$200"
            print(cell.stockName)
            return cell
        }
                
    }
    
    //tableview cell row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }
        return 50
    }
    

}
