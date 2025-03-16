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
    
    let model: CardModel
    
    var body: some View {
        ZStack (alignment: .bottom) {
            ZStack (alignment: .top) {
                
                Image(user.imagesURLs?[currentImageIndex] ?? "")
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollOverlay(
                            currentImageIndex: $currentImageIndex, imageCount: imageCount
                        )
                    }
                CardImageIndicatorView(currentIndex: currentImageIndex, imageCount: imageCount)
                SwipeActionIndicatorView(xOffset: $xOffset)
                    .frame(maxWidth: SizeConstants.cardWidth)
                    .padding(.top, 20)
            }
            CardInfoView(user: user)
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
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        guard user.imagesURLs != nil else { return 0 }
        return user.imagesURLs!.count
    }
    
    func onDragChanged(_ value: DragGesture.Value) {
        xOffset = value.translation.width
        degree = Double(value.translation.width / 50)
    }
    
    func onDragEnded(_ value: DragGesture.Value) {
        let width = value.translation.width

        if abs(width) <= abs(SizeConstants.screenCutOff) {
            xOffset = 0
            degree = 0
            return
        }
        
        if width >= SizeConstants.screenCutOff {
            xOffset = 500
            degree = 12
        } else {
            xOffset = -500
            degree = -12
        }
    }
    
    func swipeRight() {
        
    }
    
    func swipeLeft() {
        
    }
}

#Preview {
    CardView(
        model: CardModel.init(
            user: MockData.users[1]
        )
    )
}
