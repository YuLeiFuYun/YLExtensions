//
//  SecondModel.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit
import YLExtensions

struct SecondModel {
    let images: [Image]
    let colors: [Color]
}

extension SecondModel: ModelType {
    static var cCells: [UICollectionViewCell.Type]? {
        [ColorCell.self]
    }
    
    static var cNibs: [UICollectionViewCell.Type]? {
        [ImageCell.self]
    }
    
    static var cAll: [UICollectionViewCell.Type]? {
        [ImageCell.self, ColorCell.self]
    }
    
    static var headViews: [UICollectionReusableView.Type]? {
        [HeadView.self]
    }
    
    var data: [[Any]]? {
        [images, colors]
    }
}
