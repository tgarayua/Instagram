//
//  CurrentUserProfile.swift
//  Instagram
//
//  Created by Thomas Garayua on 8/1/23.
//

import SwiftUI

struct CurrentUserProfile: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image("Thomas_Garayua")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.gray)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 15, title: "Post")
                            UserStatView(value: 717, title: "Followers")
                            UserStatView(value: 480, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading) {
                        Text("Thomas Garayua")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("iOS Developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    
                    Button {
                        // Action
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()
                }
                
                // Post Grid View
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("palm_tree")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfile()
    }
}
