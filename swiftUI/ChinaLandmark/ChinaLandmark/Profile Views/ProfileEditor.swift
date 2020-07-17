//
//  PrefileEditor.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/4.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profileCopy: User
    
    var body: some View {
        List{
            HStack{
                Text("昵称").bold()
                Divider()
                TextField("昵称", text: $profileCopy.username)
            }
            Toggle(isOn: $profileCopy.prefersNotifications){
                Text("允许通知").bold()
            }
            
            VStack(alignment: .leading){
                Text("喜欢的季节")
                    .bold()
                Picker("喜欢的季节", selection: $profileCopy.prefersSeason) {
                    ForEach(User.Season.allCases,id: \.self) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            .pickerStyle(SegmentedPickerStyle())
            }
            .padding(.top)
            
            VStack(alignment: .leading){
                Text("生日")
                    .bold()
                DatePicker(" ",selection: $profileCopy.birthday,
                           displayedComponents: .date)
            }
            .padding(.top)
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profileCopy: .constant(.default))
    }
}
