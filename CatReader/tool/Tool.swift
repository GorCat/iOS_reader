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
