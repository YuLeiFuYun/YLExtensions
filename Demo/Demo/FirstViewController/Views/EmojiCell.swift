//
//  EmojiCell.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

class EmojiCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    
    override func configure(_ model: Any?) {
        guard let model = model as? Emoji else { return }
        emojiLabel.text = model.emoji
    }
    
}
