//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing:32){
                    ProfileHeaderView()
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationBarItems(
                leading: Text("shailesh._.h")
                        .font(.system(size:28, weight: .bold))
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
