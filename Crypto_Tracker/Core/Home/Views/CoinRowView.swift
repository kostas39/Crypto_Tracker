//
//  CoinRowView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 26/04/2024.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
            //market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //coin name info
            
            //coin price info
        }
    }
}

#Preview {
    CoinRowView()
}
