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
    var cCells: [UICollectionViewCell.Type]? {
        [ColorCell.self]
    }
    
    var cNibs: [UICollectionViewCell.Type]? {
        [ImageCell.self]
    }
    
    var cAll: [UICollectionViewCell.Type]? {
        [ImageCell.self, ColorCell.self]
    }
    
    var headViews: [UICollectionReusableView.Type]? {
        [HeadView.self]
    }
    
    var data: [[Any]]? {
        [images, colors]
    }
}
