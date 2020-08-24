//
//  NibView.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

public protocol NibView { }

extension NibView where Self: UIView {
    public static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}

extension UITableViewCell: NibView { }
extension UITableViewHeaderFooterView: NibView { }
extension UICollectionReusableView: NibView { }
