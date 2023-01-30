//
//  ProfileView.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            Text("Profile Screen")
                .foregroundColor(.black)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
