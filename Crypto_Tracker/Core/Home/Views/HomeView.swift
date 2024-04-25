//
//  HomeView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 25/04/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical,showsIndicators: false ,content: {
                
                //top movers view
                TopMoversView()
                //all coins view
            })
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
