//
//  BalanceCell.swift
//  investing app
//
//  Created by Tigran on 1/30/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class BalanceCell: UITableViewCell {
    //instance variables
    var title = ""
    var amount = ""
    
    //titleLabel font size
    private let titleLabelFontSize: CGFloat = 30
    
    //titleLabel leading constraints sizes
    private let titleLabelLeading: CGFloat = 20
    private let titleLabelTop: CGFloat = 20
    
    //amountLabel font size
    private let amountLabelFontSize: CGFloat = 25
    
    //amountLabel leading constraints sizes
    private let amountLabelLeading: CGFloat = 20
    private let amountLabelTop: CGFloat = 10
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        let titleLabel = UILabel()
        let amountLabel = UILabel()
        
        // configuring cell components
        //configuring titleLabel
        configureLabel(label: titleLabel, text: title)
        
        //configuring amountLabel
        configureLabel(label: amountLabel, text: amount)
        
        
        //activating constraints
        NSLayoutConstraint.activate([
        //titleLabel
            titleLabel.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: titleLabelLeading),
            titleLabel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: titleLabelTop),
        
        //amount label
            amountLabel.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: amountLabelLeading),
            amountLabel.topAnchor.constraint(equalTo: titleLabel.layoutMarginsGuide.bottomAnchor, constant: amountLabelTop)
            
        ])
    }
    
    // configures passed label
    private func configureLabel(label: UILabel, text: String) {
        label.text = text
        label.font = UIFont.systemFont(ofSize: titleLabelFontSize)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
    }

}
