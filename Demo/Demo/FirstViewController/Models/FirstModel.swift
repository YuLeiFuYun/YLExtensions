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
    var tCells: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self]
    }
    
    var tNibs: [UITableViewCell.Type]? {
        [EmojiCell.self]
    }
    
    var tAll: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self, EmojiCell.self]
    }
    
    var data: [[Any]]? {
        [texts, links, emojis]
    }
}
