//
//  ProgressCard.swift
//  Acourse
//
//  Created by JonathanTriC on 26/01/23.
//

import SwiftUI

struct ProgressCard: View {
    var classImg: String
    var classCategory: String
    var classTitle: String
    var classTaken: Int
    var classTotal: Int
    var classProgress: Int
    
    var body: some View {
        ZStack {
            Color("BgCard").cornerRadius(24)
            
            VStack(alignment: .leading) {
                Image(classImg)
                    .resizable()
                    .frame(width: 220, height: 160)
                    .aspectRatio(16/9, contentMode: .fit)
                    .cornerRadius(24, corners: [.topLeft, .topRight])
                    .padding(.bottom, 6)
                
                Text(classCategory)
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 2)
                
                Text(classTitle)
                    .font(.headline)
                    .foregroundColor(Color("Header03"))
                    .fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 2)
                
                Text("\(classTaken) of \(classTotal) Lessons")
                    .font(.footnote)
                    .foregroundColor(Color("Grey01"))
                    .padding(.horizontal, 24)
                    .padding(.bottom, 4)
                
                
                HStack{
                    ProgressBar(
                        value: Double(classProgress),
                        maxValue: 100,
                        backgroundColor: Color("ProgressBar"),
                        foregroundColor: .blue
                    )
                    .frame(height: 10)
                    
                    Spacer()
                    
                    Text("\(classProgress)%")
                        .font(.footnote)
                        .foregroundColor(Color("Header03"))
                        .fontWeight(.medium)
                }
                .padding(.horizontal, 24)
                .padding(.bottom)
            }
            .frame(maxWidth: 220)
        }
    }
}

struct ProgressCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            ProgressCard(
                classImg: "classBanner",
                classCategory: "Design",
                classTitle: "UX Design: Design Thinking",
                classTaken: 8,
                classTotal: 10,
                classProgress: 50
            )
        }
    }
}
