//
//  StockHolding.swift
//  Stock Holdings Project
//
//  Created by Onurcan Sever on 2021-10-02.
//

import Foundation

class StockHolding: NSObject {
    var purchaseSharePrice: Float
    var currentSharePrice: Float
    var numberOfShares: Int
    var companyName: String
    
    init(purchaseSharePrice: Float, currentSharePrice: Float, numberOfShares: Int, companyName: String) {
        self.purchaseSharePrice = purchaseSharePrice
        self.currentSharePrice = currentSharePrice
        self.numberOfShares = numberOfShares
        self.companyName = companyName
    }
    
    func costInDollars() -> Float {
        return self.purchaseSharePrice * Float(self.numberOfShares)
    }
    
    func valueInDollars() -> Float {
        return self.currentSharePrice * Float(self.numberOfShares)
    }
}
