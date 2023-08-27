//
//  UserListView.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ..< 20) { _ in
                    NavigationLink(destination: ProfileView(), label: {
                        UserCell()
                            .padding(.leading)
                    })
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
