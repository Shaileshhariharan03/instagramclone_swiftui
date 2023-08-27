//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            //profile info
            HStack{
                Image("prof")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                VStack(alignment: .leading){
                    Text("shailesh._.h")
                        .font(.system(size: 15, weight: .semibold))
                    Text("Singapore")
                        .font(.system(size: 12))
                }
                .padding(.leading,3)
            }
            .padding(.leading,17)
            
            //image
            Image("prof")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            //buttons
            HStack(spacing:16){
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                Button(action: {}, label: {
                    Image("instagramcomment")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                        .font(.system(size: 20))
                        .padding(1)
                })
                Button(action: {}, label: {
                    Image("instagram-share-icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding(.leading,15)
            .padding(.top,5)
            .foregroundColor(.black)
            
            //like count
            HStack{
                Text("Liked by")
                    .font(.system(size: 15)) +
                Text(" gow.ri.ii")
                    .font(.system(size: 15,weight: .semibold)) +
                Text(" and")
                    .font(.system(size: 15)) +
                Text(" 182 others")
                    .font(.system(size: 15,weight: .semibold))
            }
            .padding(.leading,20)
            .padding(.bottom,1)
            
            //caption
            HStack{
                Text("shailesh._.h")
                    .font(.system(size: 15,weight: .semibold)) +
                Text(" mems ☁️")
                    .font(.system(size: 15))
            }
            .padding(.horizontal,20)
            
            Text("2 days ago")
                .padding(.top,-4)
                .padding(.leading,20)
                .font(.system(size: 13))
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
