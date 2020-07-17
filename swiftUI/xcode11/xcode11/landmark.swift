//
//  landmark.swift
//  xcode11
//
//  Created by 小天才智能电脑 on 2020/5/25.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct Landmark : Identifiable {
    var id = UUID()
    var name: String
    var EnglishName: String
    var location: String
    
    var imageName: String{return EnglishName}
    var thumbnailName: String{return "\(EnglishName)(l)"}
}

let landmarks = [
    Landmark(name: "长城", EnglishName: "Great Wall", location: "北京"),
    Landmark(name: "自由女神像", EnglishName: "Statue of Liberty", location: "纽约"),
    Landmark(name: "大笨钟", EnglishName: "Big Ben", location: "伦敦"),
    Landmark(name: "埃菲尔铁塔", EnglishName: "Eiffel Tower", location: "巴黎"),
    Landmark(name: "悉尼歌剧院", EnglishName: "Sydney Opera House", location: "悉尼"),
]
