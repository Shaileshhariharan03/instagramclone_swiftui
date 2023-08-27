//
//  LoginView.swift
//  InstagramClone
//
//  Created by Shailesh H on 11/08/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Image("Instagram_logo.svg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 125,height: 65)
                    .padding(.bottom)
                
                VStack(spacing: 13){
                    CustomTextField(text: $email, placeholder: Text("Phone number, username or email address"))
                        .padding()
                        .background(Color(.init(white: 0, alpha: 0.02)))
                        .cornerRadius(7)
                        .font(.system(size: 13))
                        .frame(width: 355,height: 48)
                        .overlay(RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.gray, lineWidth: 0.15)
                        )
                    
                    //password
                    CustomTextField(text: $password, placeholder:
                        Text("Password"))
                        .padding()
                        .background(Color(.init(white: 0, alpha: 0.02)))
                        .cornerRadius(7)
                        .font(.system(size: 13))
                        .frame(width: 355,height: 48)
                        .overlay(RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.gray, lineWidth: 0.15)
                        )
                }
                
                //forgot password
                HStack{
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Forgotten Password?")
                            .font(.system(size: 11.5,weight: .semibold))
                            .foregroundColor(.init(red: 0.141, green: 0.662, blue: 0.968))
                            .padding(.top,8)
                            .padding(.trailing)
                    })
                }
                
                //signin button
                Button(action: {}, label: {
                    Text("Log In")
                        .font(.system(size:13,weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 355,height: 45)
                        .background(Color(.init(red: 0.141, green: 0.662, blue: 0.968, alpha: 1)))
                        .cornerRadius(7)
                        .padding()
                })
                
                //signup
                Spacer()
                Divider()
                
                NavigationLink(destination: RegistrationView(), label:{
                    HStack{
                        Text("Don't have an account?")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        Text("Sign Up")
                            .font(.system(size: 12, weight: .semibold))
                    }
                    .padding(.top)
                }
                    )
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
