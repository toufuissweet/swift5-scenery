//
//  Landmark.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/5/30.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI
import CoreLocation

struct  Landmark: Identifiable {
    var id: Int
    var category: String
    var name: String
    var city: String
    var province: String
    
    var latitude: Double
    var longitude: Double
    var locationCoordinate: CLLocationCoordinate2D{ CLLocationCoordinate2D(latitude: latitude, longitude: longitude) }
    
    var imageName: String
    var isFavorite: Bool
    var isFeatured: Bool
}

let landmarks = [
    Landmark(id: 1, category: "古迹", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "bj", isFavorite: true, isFeatured: true),
    Landmark(id: 2, category: "古迹", name: "避暑山庄", city: "承德", province: "河北省", latitude: 40.9883571, longitude: 117.9384410, imageName: "bssz", isFavorite: true, isFeatured: false),
    Landmark(id: 3, category:"古迹", name:"布达拉宫", city:"拉萨", province:"西藏自治区", latitude: 29.6554988, longitude: 91.1163852, imageName:"bdlg", isFavorite: false, isFeatured: true),
    Landmark(id: 4, category:"古迹", name:"苏州园林", city:"苏州", province:"江苏省", latitude: 31.3243645, longitude: 120.6298785, imageName:"szyl", isFavorite: true, isFeatured: false),
    Landmark(id: 5, category:"现代建筑", name:"广州塔", city:"广州", province:"广东省", latitude: 23.1066805, longitude: 113.3245904, imageName:"gz", isFavorite: true, isFeatured: false),
    Landmark(id: 6, category:"现代建筑", name:"东方明珠", city:"上海", province:"上海市", latitude: 31.3243645, longitude: 120.6298785, imageName:"sh", isFavorite: false, isFeatured: false),
    Landmark(id: 7, category:"现代建筑", name:"金融中心", city:"香港", province:"香港特别行政区", latitude: 22.1653765, longitude: 114.0935455, imageName:"hk", isFavorite: false, isFeatured: true),
    Landmark(id: 8, category:"自然景观", name:"九寨沟", city:"成都", province:"四川", latitude: 33.2631855, longitude: 104.2367255, imageName:"jzg", isFavorite: true, isFeatured: true),
    Landmark(id: 9, category:"自然景观", name:"华山", city:"西安", province:"陕西省", latitude: 34.1536855, longitude: 109.5755555, imageName:"hs", isFavorite: true, isFeatured: false),
    Landmark(id: 10, category:"自然景观", name:"桂林山水", city:"桂林", province:"广西省", latitude: 24.9168205, longitude: 110.5262205, imageName:"glss", isFavorite: false, isFeatured: true),
    
]

let featuredLandmarks = landmarks.filter{ $0.isFeatured}

//底层原理
//var featuredLandmarks: [Landmark] = []
//
//for landmark in landmarks{
//    if landmark.isFeatured{
//        featuredLandmarks.append(landmark)
//    }
//}
