//
//  ViewController.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initSubviews() {
        super.initSubviews()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "详情", style: .plain, target: self, action: #selector(pushToDetail))
    }
    
    @objc func pushToDetail() {
        let vc = RDReadPageViewController(bookDetail: RDBookDetailModel())
        navigationController?.pushViewController(vc, animated: true)
    }

}

