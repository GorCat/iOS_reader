//
//  RDReadToolPageView.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

enum RDPageType:String, Codable {
    case none
    case real
    case slider
}

class RDReadToolPageView: UIView {
    var defaultType: RDPageType = .none {
        didSet {
            switch defaultType {
            case .none:
                noneBtn.isSelected = true
                selectBtn = noneBtn
            case .real:
                realBtn.isSelected = true
                selectBtn = realBtn
            case .slider:
                sliderBtn.isSelected = true
                selectBtn = sliderBtn
            }
        }
    }
    var pageType: ((RDPageType) -> Void)?
    
    let realBtn = UIButton()
    let sliderBtn = UIButton()
    let noneBtn = UIButton()
    var selectBtn = UIButton()
    
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
        let width: CGFloat = 80
        let spacing = (frame.width - 40 - 80 * 3) / 2
        realBtn.frame = CGRect(x: 20, y: 0, width: width, height: frame.size.height)
        sliderBtn.frame = CGRect(x: realBtn.right + spacing, y: 0, width: width, height: frame.size.height)
        noneBtn.frame = CGRect(x: sliderBtn.right + spacing, y: 0, width: width, height: frame.size.height)
        
    }
    
    // MARK: - UI
    
    func initSubviews() {
        let imgs = [("balck_border_btn", "仿真翻页"), ("balck_border_btn", "左右滑动"), ("balck_border_btn", "无")]
        let buttons = [realBtn, sliderBtn, noneBtn]
        for (index, button) in buttons.enumerated() {
            let (img, name) = imgs[index]
            button.setTitle(name, for: .normal)
            button.setTitleColor(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), for: .normal)
            button.setTitleColor(.white, for: .selected)
            button.setImage(UIImage(named: img), for: .normal)
            button.setImage(UIImage(named: "green_btn_1"), for: .selected)
            button.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            addSubview(button)
        }
    }
    
    @objc func click(_ sender: UIButton) {
        selectBtn.isSelected = false
        sender.isSelected = true
        selectBtn = sender
        var type: RDPageType = .none
        switch sender {
        case noneBtn:
            type = .none
        case realBtn:
            type = .real
        case sliderBtn:
            type = .slider
        default:
            break
        }
        RDReadConfigManager.share.pageType = type
    }
    
}
