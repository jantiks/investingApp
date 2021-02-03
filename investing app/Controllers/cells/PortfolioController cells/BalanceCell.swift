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
        let stackView = UIStackView()
        
        // configuring cell components
        //configuring titleLabel
        configureLabel(label: titleLabel, text: title, color: .lightGray)
        stackView.addArrangedSubview(titleLabel)
        //configuring amountLabel
        configureLabel(label: amountLabel, text: amount, color: .white)
        stackView.addArrangedSubview(amountLabel)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        self.addSubview(stackView)
        
        //activating constraints
        NSLayoutConstraint.activate([
 
            stackView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: titleLabelLeading),
            stackView.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor),
            stackView.topAnchor.constraint(greaterThanOrEqualTo: self.layoutMarginsGuide.topAnchor, constant: 5),
            stackView.bottomAnchor.constraint(greaterThanOrEqualTo: self.layoutMarginsGuide.bottomAnchor, constant: 5)
        ])
    }
    
    // configures passed label
    private func configureLabel(label: UILabel, text: String, color: UIColor) {
        label.text = text
        label.font = UIFont.systemFont(ofSize: titleLabelFontSize)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
    }

}
