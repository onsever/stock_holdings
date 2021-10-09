//
//  main.swift
//  Stock Holdings Project
//
//  Created by Onurcan Sever on 2021-10-02.
//

import Foundation

func sortAlphabetically(stocks: [StockHolding]) -> Void {
    var stocksInformation = stocks
    stocksInformation = stocksInformation.sorted(by: { $0.getCompanyName() < $1.getCompanyName() })
    
    for item in stocksInformation {
        print("Company Name: \(item.getCompanyName())")
        print("Purchase Share Price: \(item.getPurchaseSharePrice())")
        print("Current Share Price: \(item.getCurrentSharePrice())")
        print("Number of Shares: \(item.getNumberOfShares())")
        if item is ForeignStockHolding {
            print("Conversion Rate: \((item as! ForeignStockHolding).getConversionRate())")
        }
        print("\n")
    }
}

func sortLowestToHighest(stocks: [StockHolding]) -> Void {
    var stocksInformation = stocks
    stocksInformation = stocksInformation.sorted(by: { $0.valueInDollars() < $1.valueInDollars() })
    
    for item in stocksInformation {
        print("Company Name: \(item.getCompanyName())")
        print("Purchase Share Price: \(item.getPurchaseSharePrice())")
        print("Current Share Price: \(item.getCurrentSharePrice())")
        print("Number of Shares: \(item.getNumberOfShares())")
        if item is ForeignStockHolding {
            print("Conversion Rate: \((item as! ForeignStockHolding).getConversionRate())")
        }
        print("\n")
    }
}

func displayLowestValue(stocks: [StockHolding]) -> Void {
    let stocksInformation = stocks
    var lowestStock = stocksInformation[0]
    var isForeign = true
    
    for item in 0..<stocksInformation.count {
        if (lowestStock.valueInDollars() > stocksInformation[item].valueInDollars()) {
            lowestStock = stocksInformation[item]
            
            if lowestStock is ForeignStockHolding {
                isForeign = true
            }
            else {
                isForeign = false
            }
        }
    }
    
    print("Displaying the stock with the lowest value: ")
    print("Company Name: \(lowestStock.getCompanyName())")
    print("Purchase Share Price: \(lowestStock.getPurchaseSharePrice())")
    print("Current Share Price: \(lowestStock.getCurrentSharePrice())")
    print("Number of Shares: \(lowestStock.getNumberOfShares())")
    if isForeign {
        print("Conversion Rate: \((lowestStock as! ForeignStockHolding).getConversionRate())")
    }
    print("\n")
    
}

func displayHighestValue(stocks: [StockHolding]) -> Void {
    let stocksInformation = stocks
    var highestStock = stocksInformation[0]
    var isForeign = true
    
    for item in 0..<stocksInformation.count {
        if (highestStock.valueInDollars() < stocksInformation[item].valueInDollars()) {
            highestStock = stocksInformation[item]
            
            if highestStock is ForeignStockHolding {
                isForeign = true
            }
            else {
                isForeign = false
            }
        }
    }
    
    print("Displaying the stock with the highest value: ")
    print("Company Name: \(highestStock.getCompanyName())")
    print("Purchase Share Price: \(highestStock.getPurchaseSharePrice())")
    print("Current Share Price: \(highestStock.getCurrentSharePrice())")
    print("Number of Shares: \(highestStock.getNumberOfShares())")
    if isForeign {
        print("Conversion Rate: \((highestStock as! ForeignStockHolding).getConversionRate())")
    }
    print("\n")
    
}

func displayMostProfitableStock(stocks: [StockHolding]) -> Void {
    let stocksInformation = stocks
    var mostProfitable = stocksInformation[0]
    var isForeign = true
    
    for item in 0..<stocksInformation.count {
        if ((mostProfitable.valueInDollars() - mostProfitable.costInDollars()) < (stocksInformation[item].valueInDollars() - stocksInformation[item].costInDollars())) {
            mostProfitable = stocksInformation[item]
            
            if mostProfitable is ForeignStockHolding {
                isForeign = true
            }
            else {
                isForeign = false
            }
        }
    }
    
    print("Displaying the most profitable stock: ")
    print("Company Name: \(mostProfitable.getCompanyName())")
    print("Purchase Share Price: \(mostProfitable.getPurchaseSharePrice())")
    print("Current Share Price: \(mostProfitable.getCurrentSharePrice())")
    print("Number of Shares: \(mostProfitable.getNumberOfShares())")
    if isForeign {
        print("Conversion Rate: \((mostProfitable as! ForeignStockHolding).getConversionRate())")
    }
    print("\n")
    
}

func displayLeastProfitableStock(stocks: [StockHolding]) -> Void {
    let stocksInformation = stocks
    var leastProfitable = stocksInformation[0]
    var isForeign = true
    
    for item in 0..<stocksInformation.count {
        if ((leastProfitable.valueInDollars() - leastProfitable.costInDollars()) > (stocksInformation[item].valueInDollars() - stocksInformation[item].costInDollars())) {
            leastProfitable = stocksInformation[item]
            
            if leastProfitable is ForeignStockHolding {
                isForeign = true
            }
            else {
                isForeign = false
            }
        }
    }
    
    print("Displaying the least profitable stock: ")
    print("Company Name: \(leastProfitable.getCompanyName())")
    print("Purchase Share Price: \(leastProfitable.getPurchaseSharePrice())")
    print("Current Share Price: \(leastProfitable.getCurrentSharePrice())")
    print("Number of Shares: \(leastProfitable.getNumberOfShares())")
    if isForeign {
        print("Conversion Rate: \((leastProfitable as! ForeignStockHolding).getConversionRate())")
    }
    print("\n")
    
}

var stocks: [StockHolding] = [StockHolding]()

stocks.append(StockHolding(purchaseSharePrice: 2.30, currentSharePrice: 4.50, numberOfShares: 40, companyName: "Facebook"))

stocks.append(StockHolding(purchaseSharePrice: 12.19, currentSharePrice: 10.56, numberOfShares: 90, companyName: "Apple"))

stocks.append(StockHolding(purchaseSharePrice: 45.10, currentSharePrice: 49.51, numberOfShares: 210, companyName: "Google"))

stocks.append(ForeignStockHolding(purchaseSharePrice: 1.50, currentSharePrice: 2.60, numberOfShares: 35, companyName: "Lesware", conversionRate: 1.2))

stocks.append(ForeignStockHolding(purchaseSharePrice: 4.65, currentSharePrice: 5.66, numberOfShares: 41, companyName: "Mastercard", conversionRate: 1.2))

var isMenuOnline = true

while true {
    var isValid = true
    
    print("How many stocks do you want to enter?")
    let stockNumber: Int = Int(readLine()!) ?? 0

    print("Which type of stock do you want to enter?\n1) Stock Holding\n2) Foreign Stock Holding")
    let stockType: Int = Int(readLine()!) ?? 0
    
    if stockNumber == 0 || stockType == 0 {
        isMenuOnline = false
        print("Please enter an integer value!")
        continue
    }

    if stockType == 1 {
        isValid = true
        for _ in 0..<stockNumber {
            print("Enter the company name: ")
            let companyName: String = readLine()!
            
            print("Enter the purchase share price: ")
            let purchaseSharePrice: Float = Float(readLine()!) ?? 0.0
            
            print("Enter the current share price: ")
            let currentSharePrice: Float = Float(readLine()!) ?? 0.0
            
            print("Enter the number of shares: ")
            let numberOfShares: Int = Int(readLine()!) ?? 0
            
            stocks.append(StockHolding(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares, companyName: companyName))
        }
    }
    else if stockType == 2 {
        isValid = true
        for _ in 0..<stockNumber {
            print("Enter the company name: ")
            let companyName: String = readLine()!
            
            print("Enter the purchase share price: ")
            let purchaseSharePrice: Float = Float(readLine()!) ?? 0.0
            
            print("Enter the current share price: ")
            let currentSharePrice: Float = Float(readLine()!) ?? 0.0
            
            print("Enter the number of shares: ")
            let numberOfShares: Int = Int(readLine()!) ?? 0
            
            print("Enter the conversion rate: ")
            let conversionRate: Float = Float(readLine()!) ?? 0.0
            
            stocks.append(ForeignStockHolding(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares, companyName: companyName, conversionRate: conversionRate))
        }
    }
    else {
        print("Please choose valid option.")
        isMenuOnline = false
        continue
    }
    
    if isValid {
        isMenuOnline = true
        break
    }
    
}

while isMenuOnline {
    var correctChoice: Bool = true
    
    print("Menu: ")
    print("1) Display stock information with the lowest value\n2) Display stock with the highest value\n3) Display the most profitable stock\n4) Display the least profitable stock\n5) List all stocks sorted by company name (A-Z)\n6) List all stocks sorted from the lowest value to the highest value\n7) Exit")
    let chosenNumber: Int = Int(readLine()!) ?? 0

    switch (chosenNumber) {
    case 1:
        displayLowestValue(stocks: stocks)
    case 2:
        displayHighestValue(stocks: stocks)
    case 3:
        displayMostProfitableStock(stocks: stocks)
    case 4:
        displayLeastProfitableStock(stocks: stocks)
    case 5:
        sortAlphabetically(stocks: stocks)
    case 6:
        sortLowestToHighest(stocks: stocks)
    case 7:
        correctChoice = false
    default:
        print("Please try again and enter a valid number!")
    }
    
    if correctChoice == false {
        break
    }
    
    print("Press 1 to go back to menu or any key to exit.")
    let choice: Int = Int(readLine()!) ?? 0
    
    if choice == 0 {
        break
    }
}
