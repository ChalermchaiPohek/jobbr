//
//  ImageScrollOverlay.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct ImageScrollOverlay: View {
    @Binding var currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    print("Go to previous")
                    updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    print("Go to next")
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(.white.opacity(0.01))
    }
}

private extension ImageScrollOverlay {
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
        
        
    }
}

#Preview {
    ImageScrollOverlay(currentImageIndex: .constant(0), imageCount: 2)
}
