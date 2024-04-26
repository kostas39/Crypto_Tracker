//
//  AllCoinsView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 26/04/2024.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack {
            Text("All Coins")
                .font(.headline)
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundStyle(.gray)
            .font(.caption)
            .padding(.horizontal)
        }
    }
}

#Preview {
    AllCoinsView()
}
