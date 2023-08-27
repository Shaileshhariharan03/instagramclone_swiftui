//
//  NotificationsView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack{
                    ForEach(0 ..< 20) { _ in
                        NotificationCell()
                            .padding(.top)
                    }
                }
            }
            .navigationBarItems(
                leading: Text("Notifications")
                    .font(.system(size:30, weight: .bold))
            )
        }
        
        
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
