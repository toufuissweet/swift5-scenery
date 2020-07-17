//
//  Home.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/2.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var categories: [String:[Landmark]] {
        Dictionary(grouping: landmarks,
                   by: {$0.category})
    }
    
    @State var showingProfile = false
    
    var body: some View {
        NavigationView{
            List{
//                Image(landmarks[0].imageName)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .clipped()
//                    .listRowInsets(EdgeInsets())
                PageVC()
                    .frame(height: 200)
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(),id: \.self) {
                    categoryName in
                    CategoryCell(categoryName: categoryName,
                                 landmarks: self.categories[categoryName]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: LandmarkList()){
                    Text("查看所有地标")
                }
                
                
                
            }
        .navigationBarTitle(Text("精选"))
        .navigationBarItems(trailing:
            Button(action:{self.showingProfile.toggle()}) {
                            Image(systemName: "person.crop.circle")
                                .font(.largeTitle)
                                .padding()
                            }
                        ).sheet(isPresented: $showingProfile) {
                            Profile()
                        }

                }
            }
        }

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                    Home()
                    Home().environment(\.colorScheme, .dark)
                    Home().environment(\.sizeCategory, .accessibilityExtraLarge)
                }
        }
        
}




