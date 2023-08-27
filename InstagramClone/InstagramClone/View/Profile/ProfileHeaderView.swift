//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("prof")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.leading,18)
                
                HStack {
                    UserStatView(value: 5, title: "Posts")
                    UserStatView(value: 489, title: "Followers")
                    UserStatView(value: 903, title: "Following")
                }

            }
            
            Text("shailesh")
                .font(.system(size: 16,weight: .semibold))
                .padding(.leading,18)
                .padding(.top,1)
            Text("20 | 3D & VFX Artist")
                .font(.system(size: 16))
                .padding(.leading,18)
                .padding(.top,-10)
            Text("@rendersbyshailesh")
                .font(.system(size: 16))
                .padding(.leading,18)
                .padding(.top,-10)
                .foregroundColor(Color(.systemIndigo))
            
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
