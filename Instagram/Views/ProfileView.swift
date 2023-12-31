//
//  ProfileView.swift
//  Instagram
//
//  Created by Thomas Garayua on 7/28/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {

            ScrollView {
                // Header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image(user.profileImageUrl ?? "")
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
                        if let fullName = user.fullName {
                            Text(fullName)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
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
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
