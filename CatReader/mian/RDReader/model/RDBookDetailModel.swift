//
//  RDBookDetailModel.swift
//  CatReader
//
//  Created by GorCat on 2020/10/13.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit

struct RDBookDetailModel {

    var bookId: Int
    var title: String
    var coverImg: String
    var author: String
    //最近更新的章节
    var category: String
    var word: String
    var charpter: String
    var desc: String
    //更新时间
    var time: TimeInterval
    //更新的章节
    var updateCharpterId: Int
    //总章节数
    var total: Int
    var recommend: [RDLibraryDetailModel] = []
    
    //添加到书架时的阅读进度
    //书架上的书是否有更新
    var bookUpdate: Bool
    //当前阅读的章节
    var charpterModel: RDCharpterModel
    
    //当前阅读的章节
    //当前阅读的进度
    var page: Int
    //阅读的最后时间
    var readTime: TimeInterval
    //是否在书架上
    var onBookshelf: Bool
}

struct RDLibraryDetailModel {

    var bookId: String
    var coverImg: String
    var title: String
    var author: String
    var desc: String
    
    //是否连载
    var end: Bool
    var category: String
    
}

struct RDCharpterModel {

    var primaryId: String
    var charpterId: Int
    var name: String
    var content: String
    
    //数据库存储使用
    var bookId: Int
    var bookName: String
    var author: String
}
