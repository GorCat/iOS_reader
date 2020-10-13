//
//  RDLayoutButton.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//
//  按钮
//
//  继承可设置点击范围的 RDButton
//  增加了功能：可设置图片&标题对齐方式

import UIKit

enum WidButtonLayoutType {
    // 水平布局，左边image，右边text
    case horizon
    // 垂直布局，上边image，下边text
    case vertical
    // 水平布局，左边text，右边image
    case reverseHorizon
    // 垂直布局，上边text，下边image
    case reverseVertical
}

class RDLayoutButton: RDButton {

    var layoutType: WidButtonLayoutType = .horizon
    var imageAndTitleInset: CGFloat = 0
    var imageSize: CGSize?
    var titleSize: CGSize?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let btnSize = bounds.size
        let imageViewSize = imageSize ?? imageView?.image?.size
        let titleLabelSize = titleSize ?? Tool.size(of: titleLabel?.text, font: titleLabel?.font, size: btnSize)
        
        guard let imgViewSize = imageViewSize else {
            return
        }
        
        switch layoutType {
        case .horizon:
            let totalWidth = imgViewSize.width + titleLabelSize.width + imageAndTitleInset
            imageView?.frame = CGRect(x: (btnSize.width - totalWidth) / 2, y: (btnSize.height - imgViewSize.height) / 2, width: imgViewSize.width, height: imgViewSize.height)
            titleLabel?.frame = CGRect(x: imageView!.frame.maxX + imageAndTitleInset, y: (btnSize.height - titleLabelSize.height) / 2, width: titleLabelSize.width, height: titleLabelSize.height)
        case .vertical:
            let totalHeight = imgViewSize.height + titleLabelSize.height + imageAndTitleInset
            imageView?.frame = CGRect(x: (btnSize.width - imgViewSize.width) / 2, y: (btnSize.height - totalHeight) / 2, width: imgViewSize.width, height: imgViewSize.height)
            titleLabel?.frame = CGRect(x: (btnSize.width - titleLabelSize.width) / 2, y: imageView!.frame.maxY + imageAndTitleInset, width: titleLabelSize.width, height: titleLabelSize.height)
        case .reverseHorizon:
            let totalWidth = imgViewSize.width + titleLabelSize.width + imageAndTitleInset
            titleLabel?.frame = CGRect(x: (btnSize.width - totalWidth) / 2, y: (btnSize.height - titleLabelSize.height) / 2, width: titleLabelSize.width, height: titleLabelSize.height)
            imageView?.frame =  CGRect(x: titleLabel!.frame.maxX + imageAndTitleInset, y: (btnSize.height - imgViewSize.height) / 2, width: imgViewSize.width, height: imgViewSize.height)
        case .reverseVertical:
            let totalHeight = imgViewSize.height + titleLabelSize.height + imageAndTitleInset
            titleLabel?.frame = CGRect(x: (btnSize.width - titleLabelSize.width) / 2, y: (btnSize.height - totalHeight) / 2, width: titleLabelSize.width, height: titleLabelSize.height)
            imageView?.frame = CGRect(x: (btnSize.width - imgViewSize.width) / 2, y: titleLabel!.frame.maxY + imageAndTitleInset, width: imgViewSize.width, height: imgViewSize.height)
        }
    }
}
