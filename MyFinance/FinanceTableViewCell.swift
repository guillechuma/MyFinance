//
//  FinanceTableViewCell.swift
//  MyFinance
//
//  Created by Guillermo Chumaceiro on 8/17/18.
//  Copyright © 2018 Chumaceiro. All rights reserved.
//

import UIKit

class FinanceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moneySpentLabel: UILabel!
    @IBOutlet weak var moneyLeftLabel: UILabel!
    @IBOutlet weak var totalMoneyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
