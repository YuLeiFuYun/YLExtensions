//
//  Configurable.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

@objc public protocol Configurable {
    func configure(_ model: Any?)
}

extension UITableViewCell: Configurable {
    open func configure(_ model: Any?) {  }
}

extension UICollectionReusableView: Configurable {
    open func configure(_ model: Any?) {  }
}
