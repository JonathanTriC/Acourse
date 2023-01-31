//
//  MainView.swift
//  Acourse
//
//  Created by JonathanTriC on 26/01/23.
//

import SwiftUI

struct MainView: View {
    @State var current = "Home"
    
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.clear
    }
    
        var body: some View {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {                
                TabView(selection: $current) {
                    HomeView()
                        .tag("Home")
                    
                    MyClassView()
                        .tag("Class")
                    
                    CartView()
                        .tag("Cart")
                    
                    NotificationView()
                        .tag("Notification")
                    
                    ProfileView()
                        .tag("Profile")
                }
                
                HStack(spacing: 0){
                    TabButton(title: "Home", image: "home", selected: $current)
                    Spacer(minLength: 0)
                    TabButton(title: "Class", image: "class", selected: $current)
                    Spacer(minLength: 0)
                    TabButton(title: "Cart", image: "cart", selected: $current)
                    Spacer(minLength: 0)
                    TabButton(title: "Notification", image: "notif", selected: $current)
                    Spacer(minLength: 0)
                    TabButton(title: "Profile", image: "profile", selected: $current)
                    Spacer(minLength: 0)
                }
                .padding(.vertical, 16)
                .padding(.horizontal, 16)
                .background(Color.white)
                .clipShape(Capsule())
//                .padding(.horizontal, 25)
                .padding(.horizontal, 30)
            }
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
