//
//  RDButton.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//
//  按钮
//  可通过 extendInsets 设置可点击范围


import UIKit

class RDButton: UIButton {

    var extendInsets: UIEdgeInsets = .zero

    init() {
        super.init(frame: .zero)
        isExclusiveTouch = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var touchBounds = bounds
        touchBounds.origin.x -= extendInsets.left
        touchBounds.origin.y -= extendInsets.top
        bounds.size.width += extendInsets.left + extendInsets.right
        bounds.size.height += extendInsets.top + extendInsets.bottom
        return touchBounds.contains(point)
    }
}
