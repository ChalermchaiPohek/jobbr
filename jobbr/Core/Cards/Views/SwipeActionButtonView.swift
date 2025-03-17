//
//  SwipeActionView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 17/03/2568.
//

import SwiftUI

struct SwipeActionButtonView: View {
    
    @ObservedObject var viewModel: CardViewModel
    
    var body: some View {
        HStack (spacing: 32) {
            Button { // TODO: refactor
                viewModel.buttonSwipeAction = .save
            } label: {
                Image(systemName: "suitcase.fill") // TODO: change icon
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    )
            }
            .frame(width: 48, height: 48)
            
            Button {
                viewModel.buttonSwipeAction = .apply
            } label: {
                Image(systemName: "suitcase.fill") // TODO: change icon
                    .fontWeight(.heavy)
                    .foregroundStyle(.green)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    )
            }
            .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonView(viewModel: CardViewModel(service: CardService()))
}
