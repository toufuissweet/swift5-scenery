//
//  Profile.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/3.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct Profile: View {
   
    @Environment(\.editMode) var mode
    @State private var  profile = User.default
    @State private var profileCopy = User.default
    
    var dateFormatter : DateFormatter{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy年M月d日"
        return dateFormatter
    }
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                if mode?.wrappedValue == .active{
                    Button(action:{self.profile = self.profileCopy
                        self.mode?.animation(.linear).wrappedValue = .inactive
                    }){
                        Text("完成")
                    }
                }
                
                Spacer()
                EditButton().padding()
            }
            
            if mode?.wrappedValue == .inactive{
                List{
                            Text(profile.username)
                                .font(.title)
                                .bold()
                            Text("允许通知： \(profile.prefersNotifications ? "是" : "否")")
                            Text("喜欢的季节：\(profile.prefersSeason.rawValue)")
                //            Text("生日： \(dateFormatter.string(from: profile.birthday))")
                            Text("生日：\(profile.birthday, formatter: dateFormatter)")
                            VStack(alignment: .leading){
                                Text("最近的徒步旅行")
                                    .bold()
                                HikeView(hike: hikes[0])
                            }
                        }
            }else{
                
                ProfileEditor(profileCopy: $profileCopy)
                .onDisappear{
                    self.profileCopy = self.profile
                }
            }
            
            
        }.padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
