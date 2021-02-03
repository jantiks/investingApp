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
        // setting navigation controller
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font: UIFont(descriptor: .preferredFontDescriptor(withTextStyle: .caption1), size: 25)]
        navigationItem.title = "Portfolio"
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.isUserInteractionEnabled = true
        tableview.allowsSelection = true
        tableview.tableFooterView = UIView(frame: .zero)
        tableview.estimatedRowHeight = UITableView.automaticDimension
    }
    
    //returns rows in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    //tableview cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Balance", for: indexPath) as? BalanceCell else { fatalError("couldn't load cell") }
            cell.amount = "12000$"
            cell.title = "Balance"
            return cell
            
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Balance", for: indexPath) as? BalanceCell else { fatalError("couldn't load cell") }
            cell.amount = "5000$"
            cell.title = "Free Money"
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? StockCell else { fatalError("couldn't load cell") }
            cell.stockName = "Bitcoin"
            cell.stockPrice = "$200"
            return cell
        }
         
    }
    
    // when row is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("passed")
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailStockController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //tableview cell row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    

}
