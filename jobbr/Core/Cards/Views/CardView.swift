//
//  CardView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Image("") // TODO: Use the real/mockup images.
                .resizable()
                .scaledToFill()
                .foregroundColor(.gray)
            CardInfoView()
                .frame(maxWidth: cardWidth)
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
