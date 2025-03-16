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
        
        ZStack {
            ForEach(
                viewModel.cardModels
            ) { card in
                CardView(model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
