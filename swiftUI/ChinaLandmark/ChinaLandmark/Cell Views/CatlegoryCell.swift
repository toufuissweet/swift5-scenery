//
//  CatlegoryCell.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/2.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
    let categoryName: String
    let landmarks: [Landmark]
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15) {
                    ForEach(landmarks){
                        landmark in
                        
                        CategoryItem(landmark: landmark)
                    }
                }
            }
        }
        .padding(.leading, 15)
        .padding([.top, .bottom])
    }
}

struct CatlegoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(categoryName: landmarks[0].category,
                      landmarks: Array(landmarks.prefix(4))
        )
    }
}

struct CategoryItem: View {
    let landmark: Landmark
    var body: some View {
        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
            VStack(alignment: .leading) {
                Image(landmark.imageName)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .font(.caption)
                    .foregroundColor(.primary)
            }
        }
        
    }
}
