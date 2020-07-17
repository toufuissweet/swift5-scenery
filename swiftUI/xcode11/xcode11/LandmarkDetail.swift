//
//  LandmarkDetail.swift
//  xcode11
//
//  Created by 小天才智能电脑 on 2020/5/26.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    let landmark: Landmark
    @State private var zoomed = false
    
    var body: some View{
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)){
                    self.zoomed.toggle()
                }
            }
                                                                                
        if !zoomed{
                
            Text(landmark.location)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding()
                .transition(.move(edge: .trailing))
            }
            
        }
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail(landmark: landmarks[0])
        }
    }
}
