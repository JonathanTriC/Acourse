//
//  PopularCard.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct PopularCard: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("classBanner")
                .resizable()
                .frame(width: 158, height: 169)
                .scaledToFill()
                .cornerRadius(24, corners: [.topLeft, .bottomLeft])
            
            VStack(alignment: .leading) {
                Text("Design")
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 2)
                
                Text("UX Design: Design Thinking")
                    .font(.headline)
                    .foregroundColor(.black)
                    .fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 2)
                
                Text("1h 43m • 10 Lessons")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 2)
                
                HStack {
                    Text("Rp")
                        .font(.footnote)
                        .baselineOffset(6.0)
                        .foregroundColor(.blue)
                    
                    Text("100.000")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    
                    Image(systemName: "bookmark")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 24)
            }
        }
        .background {
            Color.white.cornerRadius(24)
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom)
    }
}

struct PopularCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            PopularCard()
        }
    }
}
