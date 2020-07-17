//
//  LandmarkCell.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/5/30.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct LandmarkCell: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
            .resizable()
                .frame(width: 50, height:50)
                .cornerRadius(8)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName:"star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(landmark: landmarks[0])
            LandmarkCell(landmark: landmarks[1])
            LandmarkCell(landmark: landmarks[2])
            
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
