//
//  FirstModel.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit
import YLExtensions

struct FirstModel {
    let texts: [Text]
    let links: [Link]
    let emojis: [Emoji]
}

extension FirstModel: ModelType {
    static var tCells: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self]
    }
    
    static var tNibs: [UITableViewCell.Type]? {
        [EmojiCell.self]
    }
    
    static var tAll: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self, EmojiCell.self]
    }
    
    var data: [[Any]]? {
        [texts, links, emojis]
    }
}
