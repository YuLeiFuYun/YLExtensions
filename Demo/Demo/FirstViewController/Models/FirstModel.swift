//
//  FirstModel.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit
import YLExtensions

struct FirstModel: ModelType {
    let texts: [Text]
    let links: [Link]
    let emojis: [Emoji]
    
    var data: [[Any]]?
    
    init(texts: [Text], links: [Link], emojis: [Emoji]) {
        self.texts = texts
        self.links = links
        self.emojis = emojis
        
        data = [texts, links, emojis]
    }
}

extension FirstModel {
    static var tCells: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self]
    }
    
    static var tNibs: [UITableViewCell.Type]? {
        [EmojiCell.self]
    }
    
    static var tAll: [UITableViewCell.Type]? {
        [TextCell.self, LinkCell.self, EmojiCell.self]
    }
}
