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
