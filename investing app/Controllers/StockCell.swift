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
    var stockImage = UIImage()
    var stockName = ""
    var stockPrice = ""
    
    // stockImage sizes
    let stockImageWidth = 40
    private let stockImageHeight = 40
    
    // stockImage constraints
    private let stockImageLeading: CGFloat = 0
    
    // stockName constraints
    private let stockNameLeading: CGFloat = 20
    
    // stockPrice constraints
    private let stockPriceTrailing: CGFloat = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        //initialazing views
        let imageView = UIImageView()
        let name = UILabel()
        let price = UILabel()
        
        // setting cell components
        imageView.image = stockImage
        imageView.bounds.size = CGSize(width: stockImageWidth, height: stockImageHeight)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        name.text = stockName
        name.font = UIFont.systemFont(ofSize: 20)
        name.textColor = .white
        name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(name)
        
        price.text = stockPrice
        price.font = UIFont.systemFont(ofSize: 20)
        price.textColor = .white
        price.translatesAutoresizingMaskIntoConstraints = false
        addSubview(price)
        
        //activateing constraints
        NSLayoutConstraint.activate([
            //stock image
            imageView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: stockImageLeading),
            imageView.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0),
            
            //stock name
            name.leadingAnchor.constraint(equalTo: imageView.layoutMarginsGuide.leadingAnchor, constant: stockNameLeading),
            name.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0),
            
            //stock price
            price.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor, constant: stockPriceTrailing),
            price.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor, constant: 0)])
        
    }

}
