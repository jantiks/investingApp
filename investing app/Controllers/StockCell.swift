//
//  StockCell.swift
//  investing app
//
//  Created by Tigran on 1/30/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class StockCell: UITableViewCell {
    // instance variables
    var stockImage = UIImageView()
    var stockName = UILabel()
    var stockPrice = UILabel()
    
    // stockImage sizes
    private let stockImageWidth = 40
    private let stockImageHeight = 40
    
    // stockImage constraints
    private let stockImageLeading: CGFloat = 0
    
    // stockName constraints
    private let stockNameLeading: CGFloat = 20
    
    // stockPrice constraints
    private let stockPriceTrailing: CGFloat = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        // setting cell components
        stockImage.image = UIImage(systemName: "house")
        stockImage.bounds.size = CGSize(width: stockImageWidth, height: stockImageHeight)
        stockImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stockImage)
        
        stockName.text = "Bitcoin"
        stockName.font = UIFont.systemFont(ofSize: 20)
        stockName.textColor = .white
        stockName.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stockName)
        
        stockPrice.text = "20$"
        stockPrice.font = UIFont.systemFont(ofSize: 20)
        stockPrice.textColor = .white
        stockPrice.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stockPrice)
        
        //activateing constraints
        NSLayoutConstraint.activate([
            //stock image
            stockImage.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: stockImageLeading),
            stockImage.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0),
            
            //stock name
            stockName.leadingAnchor.constraint(equalTo: stockImage.layoutMarginsGuide.leadingAnchor, constant: stockNameLeading),
            stockName.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0),
            
            //stock price
            stockPrice.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor, constant: stockPriceTrailing),
            stockPrice.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0)])
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
