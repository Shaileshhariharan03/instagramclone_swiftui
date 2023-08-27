//
//  RegistrationView.swift
//  InstagramClone
//
//  Created by Shailesh H on 11/08/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    var body: some View {
        VStack(alignment: .center){
            Text("Create Username")
                .font(.system(size: 22,weight: .semibold))
                .padding(.bottom)
            
            Text("Choose a username for your new account. You can\n always change it later.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            CustomTextField(text: $username, placeholder: Text("Username"))
                .padding()
                .background(Color(.init(white: 0, alpha: 0.02)))
                .cornerRadius(7)
                .font(.system(size: 13))
                .frame(width: 355,height: 48)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.gray, lineWidth: 0.15)
                )
            
            NavigationLink(destination: PasswordRegistrationView(), label: {
                Text("Next")
                    .font(.system(size:13,weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 355,height: 45)
                    .background(Color(.init(red: 0.141, green: 0.662, blue: 0.968, alpha: 1)))
                    .cornerRadius(7)
                    .padding()
            })
            Spacer()
        }
        .padding()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
