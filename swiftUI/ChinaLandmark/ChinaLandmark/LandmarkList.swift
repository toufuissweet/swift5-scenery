//
//  LandmarkList.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/5/30.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {

    @State private var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("只展示收藏")
                }
                ForEach(userData.userLandmarks){ landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(
                        destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)){
                                LandmarkCell(landmark: landmark)
                            }
                    }
                }
            }
            .navigationBarTitle(Text("中国地标"))
        }
    }
}
    



struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
            //LandmarkList()
            //.previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            //.previewDisplayName("iPhone 12")
        }.environmentObject(UserData())
    
    }
}
