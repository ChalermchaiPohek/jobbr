//
//  ProfileView.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 19/03/2568.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    
    
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(user.position)
                    .font(.title2)
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        
                }

            }
            .padding(.horizontal)
            ScrollView {
                VStack {
                    ZStack (alignment: .top) {
                        Image(user.imagesURLs?[currentImageIndex] ?? "")
                            .resizable()
                            .scaledToFill()
                            .overlay {
                                ImageScrollOverlay(
                                    currentImageIndex: $currentImageIndex, imageCount: user.imagesURLs?.count ?? 0
                                )
                            }
                        CardImageIndicatorView(currentIndex: currentImageIndex, imageCount: user.imagesURLs?.count ?? 0)
                    }
                    VStack (alignment: .leading, spacing: 12) {
                        Text("About")
                            .fontWeight(.semibold)
                        
                        // TODO: Add description
//                        if let descrition = user.name {
//                            Text(descrition)
//                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("More detail")
                    
                    HStack {
                        Text("JD I")
                        Text("detail I")
                        Spacer()
                    }.font(.subheadline)
                    HStack {
                        Text("JD II")
                        Text("detail II")
                        Spacer()
                    }.font(.subheadline)
                    HStack {
                        Text("JD III")
                        Text("detail III")
                        Spacer()
                    }.font(.subheadline)
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
    
}

#Preview {
    ProfileView(user: MockData.users.first!)
}
