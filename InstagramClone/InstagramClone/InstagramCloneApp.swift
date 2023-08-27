//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
