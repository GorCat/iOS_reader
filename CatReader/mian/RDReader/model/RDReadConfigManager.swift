//
//  RDReadConfigManager.swift
//  CatReader
//
//  Created by GorCat on 2020/10/14.
//  Copyright © 2020 GorCat. All rights reserved.
//

import UIKit


enum RDThemeType {
    case white
    case yellow
    case blue
    case green
    case black
}

class RDReadConfigManager: NSObject {
    let share = RDReadConfigManager()

    //行间距
    var lineSpace: CGFloat = 0
    //字体大小
    var fontSize: CGFloat = 16
    //字体名称
    var fontName = ""
    //字体颜色
    var fontColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    //主题
    var background = UIImage(named: "theme1_read_bg")!
    //标题字体大小
    var chapterFontSize: CGFloat {
        return fontSize+10
    }
    //标题行间距
    var chapterLineSpace: CGFloat {
        return lineSpace+30
    }
    //首行缩紧
    var firstLineHeadIndent: CGFloat = 0
    //屏幕亮度
    var brightness: CGFloat = 0.5
    //翻页效果
    var pageType: RDPageType = .real
    //左上角小标题颜色
    var samllCharpterColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    //下面电量进度颜色
    var toolColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    //设置主题
    var theme: RDThemeType = .white {
        didSet {
            switch theme {
            case .white:
                fontColor = .black
                samllCharpterColor = #colorLiteral(red: 0.6705882353, green: 0.6705882353, blue: 0.6705882353, alpha: 1)
                background = UIImage(named: "theme1_read_bg")!
                toolColor = #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
            case .yellow:
                fontColor = #colorLiteral(red: 0.1764705882, green: 0.1764705882, blue: 0.1764705882, alpha: 1)
                samllCharpterColor = #colorLiteral(red: 0.6352941176, green: 0.5960784314, blue: 0.537254902, alpha: 1)
                background = UIImage(named: "theme2_read_bg")!
                toolColor = #colorLiteral(red: 0.568627451, green: 0.5333333333, blue: 0.4823529412, alpha: 1)
            case .blue:
                fontColor = #colorLiteral(red: 0.1921568627, green: 0.2470588235, blue: 0.2980392157, alpha: 1)
                samllCharpterColor = #colorLiteral(red: 0.5333333333, green: 0.5843137255, blue: 0.6274509804, alpha: 1)
                background = UIImage(named: "theme3_read_bg")!
                toolColor = #colorLiteral(red: 0.4784313725, green: 0.5215686275, blue: 0.5607843137, alpha: 1)
            case .green:
                fontColor = #colorLiteral(red: 0.1843137255, green: 0.2666666667, blue: 0.1803921569, alpha: 1)
                samllCharpterColor = #colorLiteral(red: 0.5607843137, green: 0.6156862745, blue: 0.5607843137, alpha: 1)
                background = UIImage(named: "theme4_read_bg")!
                toolColor = #colorLiteral(red: 0.5019607843, green: 0.5490196078, blue: 0.5019607843, alpha: 1)
            case .black:
                fontColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
                samllCharpterColor = #colorLiteral(red: 0.08235294118, green: 0.08235294118, blue: 0.08235294118, alpha: 1)
                background = UIImage(named: "theme5_read_bg")!
                toolColor = #colorLiteral(red: 0.08235294118, green: 0.08235294118, blue: 0.08235294118, alpha: 1)
            }
        }
    }

    private override init () {
    }

}
