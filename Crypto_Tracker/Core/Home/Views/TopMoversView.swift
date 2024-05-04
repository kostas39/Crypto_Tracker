//
//  TopMoversView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 25/04/2024.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 5, id: \.self) { _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMoversView(viewModel: HomeViewModel())
}
