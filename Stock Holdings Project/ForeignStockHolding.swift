//
//  ForeignStockHolding.swift
//  Stock Holdings Project
//
//  Created by Onurcan Sever on 2021-10-02.
//

import Foundation

class ForeignStockHolding: StockHolding {
    var conversionRate: Float
    
    init(purchaseSharePrice: Float, currentSharePrice: Float, numberOfShares: Int, companyName: String, conversionRate: Float) {
        self.conversionRate = conversionRate
        super.init(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares, companyName: companyName)
    }
    
    override func costInDollars() -> Float {
        return self.purchaseSharePrice * Float(self.numberOfShares) * self.conversionRate
    }
    
    override func valueInDollars() -> Float {
        return self.currentSharePrice * Float(self.numberOfShares) * self.conversionRate
    }
    
}
