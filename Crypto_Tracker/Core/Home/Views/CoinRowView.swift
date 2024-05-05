//
//  CoinRowView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 26/04/2024.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    
    var body: some View {
        HStack {
            //market cap rank
            Text("\(coin.marketCapRank ?? 1 )")
                .font(.caption)
                .foregroundColor(.gray)
            
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            //coin price info
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
//    CoinRowView()
//}
