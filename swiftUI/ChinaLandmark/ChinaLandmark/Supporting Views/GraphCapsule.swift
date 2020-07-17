//
//  GraphCapsule.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/6/2.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI

struct GraphCapsule: View {
    var index: Int
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>
    
    var heightRatio: CGFloat {
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }
    
    var offsetRatio: CGFloat {
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }
    
    var animation: Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
             .delay(0.03 * Double(index))
    }
    
    var rippling: Animation{
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(Double(index) * 0.03)
    }
    
    var body: some View {
        Capsule()
            .fill(Color.white)
            .frame(height: height * heightRatio, alignment: .bottom)
            .offset(x: 0, y: height * -offsetRatio)
            //spring有弹簧的效果
            //delay将图片按照index一个个出现 * 0.03 设置了速度
            .animation(rippling)
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        GraphCapsule(index: 0, height: 150, range: 10..<50, overallRange: 0..<100)
    }
}