//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerPresented = false
    var body: some View {
        VStack{
            if postImage == nil {
                Button(action: { imagePickerPresented.toggle() }, label: {
                    Image("addph")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120 , height: 120)
                        .clipped()
                        .padding(.top,56)
                    
                })
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                    ImagePicker(image: $selectedImage)
                })
                Spacer()
            }
            else if let image = postImage{
                VStack{
                    HStack{
                        Button(action: {}, label: {
                           Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 13,height: 23)
                                .foregroundColor(.black)
                        })
                        Spacer()
                        Text("New Post")
                            .font(.system(size: 16,weight: .bold))
                            .padding(.leading,35)
                        
                        Spacer()
                        Button(action: {}, label: {
                            Text("Share")
                                .font(.system(size: 18,weight: .bold))
                                .foregroundColor(.blue)
                        })
                    }
                    .padding()
                    
                    HStack(alignment: .top){
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96,height: 96)
                            .clipped()
                        TextField("Write a caption...", text: $captionText)
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }
}

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
