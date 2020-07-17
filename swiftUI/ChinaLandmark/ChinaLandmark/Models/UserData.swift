//
//  UserData.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/1.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : ObservableObject{
    var objectWillChange = PassthroughSubject<UserData,Never>()
    
    var userLandmarks = landmarks{
        didSet{
            objectWillChange.send(self)
        }
    }
    
}
	
