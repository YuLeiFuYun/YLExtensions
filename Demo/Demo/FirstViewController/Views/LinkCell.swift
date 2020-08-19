//
//  LinkCell.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

class LinkCell: UITableViewCell {
    override func configure(_ model: Any?) {
        guard let model = model as? Link else { return }
        textLabel?.attributedText = model.url
    }
}
