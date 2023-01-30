//
//  MyClassView.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct MyClassView: View {
    var body: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            Text("My Class Screen")
                .foregroundColor(.black)
        }
    }
}

struct MyClassView_Previews: PreviewProvider {
    static var previews: some View {
        MyClassView()
    }
}
