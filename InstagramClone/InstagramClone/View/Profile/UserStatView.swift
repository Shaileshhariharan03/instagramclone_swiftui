//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.system(size: 16, weight: .semibold))
            Text("\(title)")
                .font(.system(size: 14,weight: .light))
        }
        .frame(width: 80, alignment: .center)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 20, title: "Post")
    }
}
