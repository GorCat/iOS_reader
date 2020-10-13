//
//  RDBookDetailModel.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

struct RDBookDetailModel {

    var bookId: Int = -1
    var title: String = ""
    var coverImg: String = ""
    var author: String = ""
    //最近更新的章节
    var category: String = ""
    var word: String = ""
    var charpter: String = ""
    var desc: String = ""
    //更新时间
    var time: TimeInterval = 0
    //更新的章节
    var updateCharpterId: Int = -1
    //总章节数
    var total: Int = -1
    var recommend: [RDLibraryDetailModel] = []
    
    //添加到书架时的阅读进度
    //书架上的书是否有更新
    var bookUpdate: Bool = false
    //当前阅读的章节
    var charpterModel: RDCharpterModel = RDCharpterModel()
    
    //当前阅读的章节
    //当前阅读的进度
    var page: Int = -1
    //阅读的最后时间
    var readTime: TimeInterval = 0
    //是否在书架上
    var onBookshelf: Bool = false
}

struct RDLibraryDetailModel {

    var bookId: String = ""
    var coverImg: String = ""
    var title: String = ""
    var author: String = ""
    var desc: String = ""
    
    //是否连载
    var end: Bool = false
    var category: String = ""
    
}

struct RDCharpterModel {

    var primaryId: String = ""
    var charpterId: Int = -1
    var name: String = ""
    var content: String = ""
    
    //数据库存储使用
    var bookId: Int = -1
    var bookName: String = ""
    var author: String = ""
}
