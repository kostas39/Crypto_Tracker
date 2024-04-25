//
//  TopMoversItemView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 25/04/2024.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            //coin info
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.semibold)
                
                Text("£56.000.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            //coin percent change
            Text(" + 5.6%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

#Preview {
    TopMoversItemView()
}
