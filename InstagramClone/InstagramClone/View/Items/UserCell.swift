//
//  UserCell.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("prof")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipped()
                .cornerRadius(24)
            VStack(alignment: .leading){
                Text("shailesh._.h")
                    .font(.system(size: 16, weight: .semibold))
                Text("shailesh")
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .foregroundColor(.black)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
