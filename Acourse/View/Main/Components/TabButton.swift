//
//  TabButton.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct TabButton: View {
    var title: String
    var image: String
    @Binding var selected: String
    
    var body: some View {
        Button {
            withAnimation(.spring()){selected = title}
        } label: {
            HStack(spacing: 10){
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("Header03"))
            }
            .padding(.vertical)
            .padding(.horizontal)
//            .background(Color.black.opacity(selected == title ? 0.05 : 0))
            .background(Color("BgCard").opacity(selected == title ? 1 : 0))
            .clipShape(Capsule())
        }

    }
}
