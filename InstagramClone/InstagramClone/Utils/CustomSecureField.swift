//
//  CustomSecureField.swift
//  InstagramClone
//
//  Created by Shailesh H on 11/08/23.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeholder
                    .foregroundColor(Color(.init(white: 0, alpha: 0.5)))
            }
            HStack{
                SecureField("", text: $text)
            }
        }
    }
}
