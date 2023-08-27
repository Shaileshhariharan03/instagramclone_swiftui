//
//  RegistrationEmailAddress.swift
//  InstagramClone
//
//  Created by Shailesh H on 11/08/23.
//

import SwiftUI

struct RegistrationEmailAddress: View {
    @State private var email = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerPresented = false
    var body: some View {
        VStack(alignment: .center){
            ZStack{
                if let image = image{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .foregroundColor(.gray)
                        .clipShape(Circle())
                }
                else{
                    Button(action: { imagePickerPresented.toggle() }, label: {
                        Image("profile-user-svgrepo-com")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100,height: 100)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                    })
                    .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                        ImagePicker(image: $selectedImage)})
                }
            }
            
            Text("Add phone number or\n email address")
                .font(.system(size: 22,weight: .semibold))
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            CustomTextField(text: $email, placeholder: Text("Phone number or email address"))
                .padding()
                .background(Color(.init(white: 0, alpha: 0.02)))
                .cornerRadius(7)
                .font(.system(size: 13))
                .frame(width: 355,height: 48)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.gray, lineWidth: 0.15)
                )
            
            Button(action: {}, label: {
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

extension RegistrationEmailAddress {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}
                   

struct RegistrationEmailAddress_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationEmailAddress()
    }
}
