//
//  Transaction.swift
//  MyFinance
//
//  Created by Guillermo Chumaceiro on 8/17/18.
//  Copyright © 2018 Chumaceiro. All rights reserved.
//

import Foundation

/*
 This struct manages the model for each transaction, it knows how much money the user has
 and the corresponding adjustments in the wallet
 */
struct Transaction {
    
    // The date of the transaction
    var date: Date
    
    // The amount of money spent on transaction
    var moneySpent: Double
    
    // The concept of the transaction
    var concept: String
    
    // Additional comments to the transaction
    var comment: String
    
    // This is a computed property of the money left in the wallet
    private(set) var moneyLeft: Double
    
    // This is a computed property of the total money spent
    private(set) var totalMoneySpent: Double
    
}
