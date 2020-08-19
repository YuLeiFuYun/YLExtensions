//
//  TextCell.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

class TextCell: UITableViewCell {
    override func configure(_ model: Any?) {
        guard let model = model as? Text else { return }
        textLabel?.text = model.text
        textLabel?.numberOfLines = 0
    }
}
