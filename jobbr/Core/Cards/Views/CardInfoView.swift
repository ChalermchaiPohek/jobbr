//
//  ProfileInfoView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardInfoView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
                Text("[user/company] name")
                    .font(.title)
                    .fontWeight(.heavy)
                    .lineLimit(3)
                Spacer()
                Button {
                    // TODO: implement a logic to show detail info.
                    print("TODO: implement a logic to show detail info.")
                } label: {
                    Image(systemName: "info.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .tint(.primary)
                }
            }
            Text("Job title")
                .font(.subheadline)
                .lineLimit(2)
            
        }
        .padding()
        .foregroundStyle(.primary)
        .background(
            LinearGradient(
                colors: [.clear, .accentColor],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        
    }
}

#Preview {
    CardInfoView()
}
