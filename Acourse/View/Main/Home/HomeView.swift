//
//  HomeView.swift
//  Acourse
//
//  Created by JonathanTriC on 30/01/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("BgColor").ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack {
                        Image("pp")
                            .resizable()
                            .frame(width: 54, height: 54)
                            .clipShape(Circle())
                            .padding(.trailing, 4)
                        
                        VStack(alignment: .leading){
                            Text("Welcome Back,")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Text("Jonathan Tri")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                            .onTapGesture {
                                print("click search")
                            }
                    }
                    .padding(.bottom)
                    
                    VStack {
                        HStack {
                            Text("Your Progress")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                            Spacer()
                            Text("See All")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    print("click see all")
                                }
                        }
                        .padding(.bottom)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ProgressCard(
                                    classImg: "classBanner",
                                    classCategory: "Design",
                                    classTitle: "Graphic Design for Intermediate",
                                    classTaken: 8,
                                    classTotal: 10,
                                    classProgress: 50
                                )
                                ProgressCard(
                                    classImg: "classBanner",
                                    classCategory: "Development",
                                    classTitle: "Javascript For Beginner",
                                    classTaken: 8,
                                    classTotal: 10,
                                    classProgress: 75
                                )
                                ProgressCard(
                                    classImg: "classBanner",
                                    classCategory: "Design",
                                    classTitle: "UX Design: Design Thinking",
                                    classTaken: 8,
                                    classTotal: 10,
                                    classProgress: 90
                                )
                            }
                            .frame(height: 310)
                        }
                    }
                    .padding(.bottom)
                    
                    VStack {
                        HStack {
                            Text("Popular Class")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                            Spacer()
                            Text("See All")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    print("click see all")
                                }
                        }
                        .padding(.bottom)
                        
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                PopularCard()
                                PopularCard()
                                PopularCard()
                            }
                        }
                    }
                    .padding(.bottom)
                }
                .padding(.bottom, 58)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.top)
            .padding(.horizontal, 20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
