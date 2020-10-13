//
//  RDReadPageView.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class RDReadPageView: UIView {

    var brightnessView: UIView?
    
    override func addSubview(_ view: UIView) {
        
        if view != brightnessView , let brightnessView = brightnessView, let index = subviews.firstIndex(of: brightnessView) {
            insertSubview(view, at: index)
        } else {
            super.addSubview(view)
        }
    }
    
    
}
