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
    @State private var currentImageIndex: Int = 0
    
    @State private var mockupImages = [
        "placeholder",
        "placeholder2"
    ]
    
    var body: some View {
        ZStack (alignment: .bottom) {
            ZStack (alignment: .top) {
                
                Image(mockupImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollOverlay(
                            currentImageIndex: $currentImageIndex, imageCount: mockupImages.count
                        )
                    }
                CardImageIndicatorView(currentIndex: currentImageIndex, imageCount: mockupImages.count)
                SwipeActionIndicatorView(xOffset: $xOffset)
                    .frame(maxWidth: SizeConstants.cardWidth)
                    .padding(.top, 20)
            }
            CardInfoView()
                .frame(maxWidth: SizeConstants.cardWidth)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
        .rotationEffect(.degrees(degree))
        .animation(.snappy, value: degree)
    }
}

private extension CardView {    
    func onDragChanged(_ value: DragGesture.Value) {
        xOffset = value.translation.width
        degree = Double(value.translation.width / 50)
    }
    
    func onDragEnded(_ value: DragGesture.Value) {
        let width = value.translation.width

        if abs(width) <= abs(SizeConstants.screenCutOff) {
            xOffset = 0
            degree = 0
        }
    }
}

#Preview {
    CardView()
}
