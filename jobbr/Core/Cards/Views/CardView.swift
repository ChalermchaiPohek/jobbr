//
//  CardView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardView: View {
    
    @State private var  xOffset: CGFloat = 0
    @State private var degree: Double = 0
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Image("placeholder")
                .resizable()
                .scaledToFill()
            CardInfoView()
                .frame(maxWidth: cardWidth)
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .animation(.snappy, value: degree)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
        .rotationEffect(.degrees(degree))
    }
}

private extension CardView {
    var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 1.6)
    }
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
    
    func onDragChanged(_ value: DragGesture.Value) {
        xOffset = value.translation.width
        degree = Double(value.translation.width / 50)
    }
    
    func onDragEnded(_ value: DragGesture.Value) {
        let width = value.translation.width

        if abs(width) <= abs(screenCutOff) {
            xOffset = 0
            degree = 0
        }
    }
}

#Preview {
    CardView()
}
