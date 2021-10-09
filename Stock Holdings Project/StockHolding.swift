//
//  StockHolding.swift
//  Stock Holdings Project
//
//  Created by Onurcan Sever on 2021-10-02.
//

import Foundation

class StockHolding: NSObject {
    private var purchaseSharePrice: Float
    private var currentSharePrice: Float
    private var numberOfShares: Int
    private var companyName: String
    
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
    
    func getPurchaseSharePrice() -> Float {
        return self.purchaseSharePrice
    }
    
    func getCurrentSharePrice() -> Float {
        return self.currentSharePrice
    }
    
    func getNumberOfShares() -> Int {
        return self.numberOfShares
    }
    
    func getCompanyName() -> String {
        return self.companyName
    }
}
