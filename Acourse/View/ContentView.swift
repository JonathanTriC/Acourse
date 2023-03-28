//
//  ContentView.swift
//  Acourse
//
//  Created by JonathanTriC on 26/01/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isHidden = true
        print("Current Variant is: \(Env().configure(InfoPlistKey.variants))")
    }
    
    var body: some View {
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
