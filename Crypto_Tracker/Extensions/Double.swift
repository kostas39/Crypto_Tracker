//
//  Double.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 06/05/2024.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter ()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var  numberFormatter: NumberFormatter {
        let formatter = NumberFormatter ()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentString() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return "" }
        return numberAsString + "%"
    }
    
}
