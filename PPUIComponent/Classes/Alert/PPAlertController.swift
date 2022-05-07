//
//  PPAlertController.swift
//  PPUIComponent
//
//  Created by 郝鹏飞 on 2022/5/6.
//

import UIKit
public struct PPAlertConfig {
    var font: UIFont = UIFont.systemFont(ofSize: 16)
    var color: UIColor = .black
}
open class PPAlertController: UIViewController {
    var titleConfig = PPAlertConfig(font: .systemFont(ofSize: 18), color: .black)
    var contentConfig = PPAlertConfig(font: .systemFont(ofSize: 22), color: .black)
    public convenience init(title: String?, content: String?) {
        self.init(title: title,
                  content: content,
                  titleConfig: nil,
                  contentConfig: nil)
    }
    public convenience init(title: String?, content: String?, titleConfig: PPAlertConfig?, contentConfig: PPAlertConfig?) {
        self.init()
        if let titleConfig = titleConfig {
            self.titleConfig = titleConfig
        }
        if let contentConfig = contentConfig {
            self.contentConfig = contentConfig
        }
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var contentLabel: UILabel = {
        let label = UILabel()
        return label
    }()
}
