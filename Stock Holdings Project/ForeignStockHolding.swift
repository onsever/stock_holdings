//
//  ForeignStockHolding.swift
//  Stock Holdings Project
//
//  Created by Onurcan Sever on 2021-10-02.
//

import Foundation

class ForeignStockHolding: StockHolding {
    private var conversionRate: Float
    
    init(purchaseSharePrice: Float, currentSharePrice: Float, numberOfShares: Int, companyName: String, conversionRate: Float) {
        self.conversionRate = conversionRate
        super.init(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares, companyName: companyName)
    }
    
    override func costInDollars() -> Float {
        return self.getPurchaseSharePrice() * Float(self.getNumberOfShares()) * self.conversionRate
    }
    
    override func valueInDollars() -> Float {
        return self.getCurrentSharePrice() * Float(self.getNumberOfShares()) * self.conversionRate
    }
    
    func getConversionRate() -> Float {
        return self.conversionRate
    }
    
}
