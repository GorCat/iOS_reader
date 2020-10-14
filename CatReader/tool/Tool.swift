//
//  Tool.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class Tool {

    static func size(of text: String?, font: UIFont?, size: CGSize) -> CGSize {
        
        guard let text = text, text.count > 0, let font = font else {
            return .zero
        }
        let attributes = [NSAttributedString.Key.font: font]
        let boundingBox = NSString(string: text).boundingRect(with: size, options: [.truncatesLastVisibleLine, .usesLineFragmentOrigin], attributes: attributes, context: nil).size
        return CGSize(width: ceil(boundingBox.width), height: ceil(boundingBox.height))
    }

}

extension UIView {
    ///判断是否为X,指带刘海屏的设备
    static var isIphoneX: Bool {
        var safeAreaBottom: CGFloat = 0
        if #available(iOS 11.0, *) {
            if #available(iOS 13.0, *) {
                safeAreaBottom = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0
            } else {
                safeAreaBottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            }
        }
        return safeAreaBottom != 0
    }
    
    static var statusBar: CGFloat {
        return self.isIphoneX ? 44 : 20
    }
    
    static var navigationBar: CGFloat {
        return 44
    }
    
    static var tarBar: CGFloat {
        return self.isIphoneX ? 49 + 34 : 49
    }
    
    static var safeBottomBar: CGFloat {
        var safeAreaBottom: CGFloat = 0
        if #available(iOS 11.0, *) {
            if #available(iOS 13.0, *) {
                safeAreaBottom = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0
            } else {
                safeAreaBottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            }
        }
        return safeAreaBottom
    }
    
    static var safeTopBar: CGFloat {
        return self.isIphoneX ? 24 : 0
    }
    
    static var margins: CGFloat {
        return 15
    }
    
    func set(right: CGFloat) {
        var new = frame
        new.origin.x = right - frame.size.width
        frame = new
    }
   
    var left: CGFloat {
        return frame.origin.x;
    }
    
    var right: CGFloat {
         return frame.origin.x + frame.size.width;
    }
}

struct CodableColor: Codable {
    var red : CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0
    var uiColor : UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    init(uiColor : UIColor) {
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    }
}

struct LocalImage: Codable {
    var name: String
    
    var image: UIImage {
        return UIImage(named: name)!
    }
    
    init(named: String) {
        name = named
    }
}
