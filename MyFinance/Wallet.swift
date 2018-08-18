//
//  Wallet.swift
//  MyFinance
//
//  Created by Guillermo Chumaceiro on 8/17/18.
//  Copyright © 2018 Chumaceiro. All rights reserved.
//

import Foundation

class Wallet {

    private(set) var availableMoney: Double
    private(set) var debt: Double
    private(set) var accumulatedSpendings: Double
    private(set) var isInDebt: Bool = false
    
    init(initialMoney: Double) {
        self.availableMoney = initialMoney
        self.debt = 0
        self.accumulatedSpendings = 0
    }
    
    func deposit(amount: Double) {
        self.availableMoney += amount
    }
    
    func withdraw(amount: Double) {
        self.availableMoney -= amount
        self.accumulatedSpendings += amount
    }
}
