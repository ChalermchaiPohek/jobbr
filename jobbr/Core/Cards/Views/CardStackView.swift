//
//  CardStackView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardStackView: View {
    
    @State private var viewModel: CardViewModel = .init(
        service: CardService()
    )
    
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 16) {
                ZStack {
                    ForEach(
                        viewModel.cardModels
                    ) { card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonView(viewModel: viewModel)
                }
            }
            .toolbar {
                // TODO: change to logo
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "logo.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88)
                }
            }
        }
    }
}

#Preview {
    CardStackView()
}
