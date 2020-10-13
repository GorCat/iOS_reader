//
//  RDReadPageViewController.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class RDReadPageViewController: BaseViewController {
    // 书籍详情与阅读进度
    var bookDetail: RDBookDetailModel
    
    var pageViewController: UIPageViewController?
    // 简短的章节信息，不包含内容
    var charpters: [RDCharpterModel] = []
    var brightnessView: UIView?
    var isShowStatusBar = false
    
    init(bookDetail: RDBookDetailModel) {
        self.bookDetail = bookDetail
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func initSubviews() {
        super.initSubviews()
    }
}
