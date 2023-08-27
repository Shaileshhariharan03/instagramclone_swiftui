//
//  SearchView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct SearchView: View {
    @State var inSearchMode = false
    @State var searchText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                SearchBar(text: $searchText, isEditing: $inSearchMode)
                    .padding()
                
                ZStack{
                    if inSearchMode {
                        UserListView()
                    }
                    else {
                        PostGridView()
                    }
                }
            }
            .navigationTitle("‏‏‎ ‎")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
