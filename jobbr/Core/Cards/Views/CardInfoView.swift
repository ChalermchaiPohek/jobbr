//
//  ProfileInfoView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct CardInfoView: View {
    let user: User
    @Binding var isShowProfile: Bool
    
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
                Text("\(user.name)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .lineLimit(3)
                Spacer()
                Button {
                    // TODO: implement a logic to show detail info.
//                    print("TODO: implement a logic to show detail info.")
                    isShowProfile.toggle()
                } label: {
                    Image(systemName: "info.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .tint(.primary)
                }
            }
            Text("\(user.position)")
                .font(.subheadline)
                .lineLimit(2)
            
        }
        .padding()
        .foregroundStyle(.primary)
        .background(
            LinearGradient(
                colors: [.clear, .blue],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        
    }
}

#Preview {
    CardInfoView(user: MockData.users[1], isShowProfile: .constant(false))
}
