//
//  PasswordRegistrationView.swift
//  InstagramClone
//
//  Created by Shailesh H on 11/08/23.
//

import SwiftUI

struct PasswordRegistrationView: View {
    @State private var password = ""
    var body: some View {
        VStack(alignment: .center){
            Text("Create password")
                .font(.system(size: 22,weight: .semibold))
                .padding(.bottom)
            
            Text("We can remember the password, so you won't\n need to enter it on your iCloud® devices.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            CustomTextField(text: $password, placeholder: Text("Password"))
                .padding()
                .background(Color(.init(white: 0, alpha: 0.02)))
                .cornerRadius(7)
                .font(.system(size: 13))
                .frame(width: 355,height: 48)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.gray, lineWidth: 0.15)
                )
            
            NavigationLink(destination: RegistrationEmailAddress(), label: {
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

struct PasswordRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordRegistrationView()
    }
}
