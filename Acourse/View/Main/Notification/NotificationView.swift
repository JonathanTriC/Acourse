//
//  NotificationView.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            Text("Notification Screen")
                .foregroundColor(.black)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
