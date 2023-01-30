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
        VStack(alignment: .leading) {
            Image(classImg)
                .resizable()
                .frame(width: 220, height: 148)
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
                .foregroundColor(.black)
                .fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .padding(.horizontal, 24)
                .padding(.bottom, 2)
            
            Text("\(classTaken) of \(classTotal) Lessons")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 24)
                .padding(.bottom, 4)

            
            HStack{
                ProgressBar(
                    value: Double(classProgress),
                    maxValue: 100,
                    foregroundColor: .blue
                )
                .frame(height: 10)
                
                Spacer()
                
                Text("\(classProgress)%")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .fontWeight(.medium)
            }
            .padding(.horizontal, 24)
            .padding(.bottom)
        }
        .background {
            Color.white.cornerRadius(24)
        }
        .frame(maxWidth: 220)
        .padding(.trailing)
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
