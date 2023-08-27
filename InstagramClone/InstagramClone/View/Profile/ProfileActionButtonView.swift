//
//  ProfileActionButtonView.swift
//  InstagramClone
//
//  Created by Shailesh H on 10/08/23.
//

import SwiftUI

struct ProfileActionButtonView: View {
    var isCurrentUser = true
    var isFollowed = false
    var body: some View {
        if isCurrentUser {
            HStack(spacing:5) {
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .frame(width: 150,height: 35)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                    .font(.system(size:16, weight: .semibold))
                })
                Button(action: {}, label: {
                    Text("Share Profile")
                        .frame(width: 172,height: 35)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                    .font(.system(size:16, weight: .semibold))
                })
                Button(action: {}, label: {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .frame(width: 35,height: 35)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                })
            }
            .padding(.top)
        }
        else{
            HStack(spacing:5) {
                Button(action: {}, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .frame(width: 150,height: 35)
                        .background(Color(isFollowed ? .systemGray5 : .systemBlue))
                        .foregroundColor(isFollowed ? .black : .white)
                        .cornerRadius(8)
                    .font(.system(size:16, weight: .semibold))
                })
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 172,height: 35)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                    .font(.system(size:16, weight: .semibold))
                })
                Button(action: {}, label: {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .frame(width: 35,height: 35)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                })
            }
            .padding(.top)
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView()
    }
}
