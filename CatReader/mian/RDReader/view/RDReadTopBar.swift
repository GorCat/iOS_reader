//
//  RDReadTopBar.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class RDReadTopBar: UIView {

    var record = RDBookDetailModel() {
        didSet {
            add.isHidden = record.onBookshelf
        }
    }
    
    var backAction: (() -> Void)?
    var downloadAction: (() -> Void)?
    var qusetionAction: (() -> Void)?
    var reloadAction: (() -> Void)?

    let download = RDLayoutButton()
    let question = RDLayoutButton()
    let backBtn = RDLayoutButton()
    let add = RDLayoutButton()
    let reload = RDLayoutButton()
    
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

        let height = UIView.navigationBar
        let width = frame.width
        let y = UIView.statusBar
        question.frame = CGRect(x: 0, y: y, width: height, height: height)
        question.set(right: width)
        download.frame = CGRect(x: 0, y: y, width: height, height: height)
        download.set(right: question.left)
        reload.frame = CGRect(x: 0, y: y, width: height, height: height)
        reload.set(right: download.left)
        add.frame = CGRect(x: 0, y: y, width: height, height: height)
        add.set(right: reload.left)
    }
    
    // MARK: - UI
    func initSubviews() {
        backBtn.frame = CGRect(x: 0, y: UIView.statusBar, width: 40, height: UIView.navigationBar)
        backBtn.adjustsImageWhenDisabled = false
        backBtn.setImage(UIImage(named: "button_back"), for: .normal)
        backBtn.imageSize = CGSize(width: 11, height: 19)
        backBtn.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
        addSubview(backBtn)
        
        let buttons: [RDLayoutButton] = [download, question, add, reload]
        let imgs = ["book_download_black", "book_help", "book_add_black", "button_reload_thin"]
        for (index, button) in buttons.enumerated() {
            let img = imgs[index]
            button.setImage(UIImage(named: img), for: .normal)
            button.imageSize = CGSize(width: 25, height: 25)
            button.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
            addSubview(button)
        }
    }
    
    @objc func click(_ sender: RDLayoutButton) {
        switch sender {
        case backBtn:
            backAction?()
        case question:
            qusetionAction?()
        case download:
            downloadAction?()
        case add:
            print("添加到书架")
        case reload:
            reloadAction?()
        default:
            break
        }
    }
}
