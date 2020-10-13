//
//  RDReadToolPageView.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

enum RDPageType {
    case none
    case real
    case slider
}

class RDReadToolPageView: UIView {
    var defaultType: RDPageType = .none
    var pageType: ((RDPageType) -> Void)?
    
    let realBtn = UIButton()
    let sliderBtn = UIButton()
    let noneBtn = UIButton()
    let selectBtn = UIButton()
    
    // MARK: - Life
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    
    func initSubviews() {
        
    }
    
}
