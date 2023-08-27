//
//  FeedView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing:32) {
                    ForEach(0 ..< 10) { _ in
                        FeedCell()
                    }

                }
                .padding(.top)
            }
            .navigationBarItems(
                leading: Image("Instagram_logo.svg")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing,200),
                trailing: Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.black)
                })
            )
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
