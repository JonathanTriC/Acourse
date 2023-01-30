//
//  CartView.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            Text("Cart Screen")
                .foregroundColor(.black)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
