//
//  NotificationCell.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = false
    var body: some View {
        HStack{
            Image("prof")
                .resizable()
                .scaledToFill()
                .frame(width: 44, height: 44)
                .clipped()
                .cornerRadius(22)
            Text("shailesh._.h")
                .font(.system(size: 16,weight: .semibold)) +
            Text(" liked one of your posts")
                .font(.system(size: 16))
            Spacer()
            
            if showPostImage {
                Image("prof")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 46, height: 46)
                    .clipped()
            }
            else {
                Button(action: {}, label: {
                    Text("Follow")
                        .padding(.horizontal,30)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size:16, weight: .semibold))
                })
            }
            
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
