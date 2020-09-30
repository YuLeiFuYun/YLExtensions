//
//  SecondModel.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit
import YLExtensions

struct SecondModel: ModelType {
    typealias Value = Never
    
    let images: [Image]
    let colors: [Color]
    
    var data: [[Any]] {
        return [images, colors]
    }
}

extension SecondModel {
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
}
