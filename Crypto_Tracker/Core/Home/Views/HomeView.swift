//
//  HomeView.swift
//  Crypto_Tracker
//
//  Created by Kostas Koliolios on 25/04/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical,showsIndicators: false ,content: {
                
                //top movers view
                TopMoversView()
                
                Divider()
                
                //all coins view
                AllCoinsView(viewModel: viewModel)
            })
            
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
