//
//  CardImageIndicatorView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let currentIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0..<imageCount, id: \.self) { index in
                Capsule()
                    .frame(width: imageIndicatorWidth, height: 4)
                    .foregroundStyle(currentIndex == index ? .white : .gray)
                    .padding(.top, 16)
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        SizeConstants.cardWidth / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(currentIndex: 1, imageCount: 5)
}
