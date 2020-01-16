//
//  ColorUtil.swift
//  Breris　03 3361 3949
//  03 3452 1474
//  Created by shichimi on 2017/09/28.
//  Copyright © 2017年 shichimitoucarashi. All rights reserved.
//

import UIKit

class Color {
    
    init() {}
    
    var colorNumbner: Int = 0
    
    public func barColor() -> UIColor {
        
        self.colorNumbner = Int(arc4random_uniform(UInt32(ColorPattern.count)))
        let colorRandom: String = ColorPattern[self.colorNumbner]
        
        return UIColor(hex: colorRandom)
    }
    
   static public func NaviBarColor () -> UIColor {
        return UIColor(hex: topBarColor)
    }
    
    static public func NaviBarTintColor() -> UIColor {
        return UIColor(hex: topBarTintColor)
    }
    
   static public func colorList (cNum: Int) -> UIColor {
        let colorRandom: String = ColorPattern[cNum]
        return UIColor(hex: colorRandom)
    }
    
    static public func baviBarTitleColor () -> UIColor {
        return UIColor(hex: naviBarTitleColor)
    }
    
   static public func ColorNum() -> Int {
        return Int(arc4random_uniform(UInt32(ColorPattern.count)))
    }
}

extension UIColor {
    
    public convenience init(hex: String, alpha: CGFloat = 1.0) {
        
        var h = hex
        if h.hasPrefix("#") {
            h = h.replacingOccurrences(of: "#",with:"")
        }
        
        let hs = h.map { String($0) } + Array(repeating: "0", count: max(6 - hex.count, 0))
 
        let rv = CGFloat((Int(hs[0] + hs[1], radix: 16) ?? 0)) / 255.0
        let gv = CGFloat((Int(hs[2] + hs[3], radix: 16) ?? 0)) / 255.0
        let bv = CGFloat((Int(hs[4] + hs[5], radix: 16) ?? 0)) / 255.0
        
        self.init(red: rv, green: gv, blue: bv, alpha: alpha)
    }
    
}
