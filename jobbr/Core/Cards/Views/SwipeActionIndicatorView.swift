//
//  SwipeActionIndicatorView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    
    @Binding var xOffset: CGFloat
//    let screenCutoff: CGFloat
    
    var body: some View {
        HStack {
            Text("Apply")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.blue, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / SizeConstants.screenCutOff))
            Spacer()
            Text("Save")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.black)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.black, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / SizeConstants.screenCutOff) * -1)
        }.padding(40)
    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(200))
}
