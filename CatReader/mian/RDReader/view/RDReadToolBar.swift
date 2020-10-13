//
//  RDReadToolBar.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class RDReadToolBar: UIView {
    let menu = RDLayoutButton()
    let slider = RDLayoutButton()
    let light = RDLayoutButton()
    let setting = RDLayoutButton()
    
    var didMenu: (() -> Void)?
    var didSlider: (() -> Void)?
    var didLight: (() -> Void)?
    var didSetting: (() -> Void)?
    
    // MARK: - Life
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        let width = frame.width / 4;
        let height = frame.height - UIView.safeBottomBar
        menu.frame = CGRect(x: 0, y: 0, width: width, height: height)
        slider.frame = CGRect(x: width, y: 0, width: width, height: height)
        light.frame = CGRect(x: width * 2, y: 0, width: width, height: height)
        setting.frame = CGRect(x: width * 3, y: 0, width: width, height: height)
    }
    
    // MARK: - UI
    func initSubviews() {
        let buttons: [RDLayoutButton] = [menu, slider, light, setting]
        let imgs = ["book_menu", "book_progress", "book_light", "book_set"]
        for (index, button) in buttons.enumerated() {
            let img = imgs[index]
            button.setImage(UIImage(named: img + "_unselect"), for: .normal)
            button.setImage(UIImage(named: img + "_select"), for: .selected)
            button.imageSize = CGSize(width: 25, height: 25)
            button.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
            addSubview(button)
        }
    }
    
    @objc func click(_ sender: RDLayoutButton) {
        switch sender {
        case menu:
            didMenu?()
        case slider:
            didSlider?()
        case light:
            didLight?()
        case setting:
            didSetting?()
        default:
            break
        }
    }
}

