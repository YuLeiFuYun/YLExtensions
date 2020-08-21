//
//  ReusableView.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

public protocol ReusableView { }

extension ReusableView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView { }
extension UITableViewHeaderFooterView: ReusableView { }
extension UICollectionReusableView: ReusableView { }
