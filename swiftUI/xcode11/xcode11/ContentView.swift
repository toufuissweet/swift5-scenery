//
//  ContentView.swift
//  xcode11
//
//  Created by 小天才智能电脑 on 2020/5/25.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                
                LandmarkCell(landmark: <#T##Landmark#>)
            }
            .navigationBarTitle(Text("世界地标"))
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LandmarkCell: View {
    let landmark: Landmark
    var body: some View {
        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
            
            Image(landmark.thumbnailName)
                .cornerRadius(15)
            VStack(alignment: .leading) {
                Text(landmark.name)
                Text(landmark.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
