//
//  ModelType.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

public protocol ModelType: Pageable {
    // to be registered table view cell
    var tCells: [UITableViewCell.Type]? { get }
    var tNibs: [UITableViewCell.Type]? { get }
    // All cell types to be registered, sort by display order
    var tAll: [UITableViewCell.Type]? { get }
    
    // to be registered collection view cell and collection reusable view
    var cCells: [UICollectionViewCell.Type]? { get }
    var cNibs: [UICollectionViewCell.Type]? { get }
    // Contains cCells and cNibs, sort by display order
    var cAll: [UICollectionViewCell.Type]? { get }
    var headViews: [UICollectionReusableView.Type]? { get }
    var footerViews: [UICollectionReusableView.Type]? { get }
    var headerNibs: [UICollectionReusableView.Type]? { get }
    var footerNibs: [UICollectionReusableView.Type]? { get }
    
    // Store model data in display order
    var data: [[Any]]? { get }
}

extension ModelType {
    public var tCells: [UITableViewCell.Type]? { nil }
    public var tNibs: [UITableViewCell.Type]? { nil }
    public var tAll: [UITableViewCell.Type]? { nil }
    
    public var cCells: [UICollectionViewCell.Type]? { nil }
    public var cNibs: [UICollectionViewCell.Type]? { nil }
    public var cAll: [UICollectionViewCell.Type]? { nil }
    public var headViews: [UICollectionReusableView.Type]? { nil }
    public var footerViews: [UICollectionReusableView.Type]? { nil }
    public var headerNibs: [UICollectionReusableView.Type]? { nil }
    public var footerNibs: [UICollectionReusableView.Type]? { nil }
    
    public var data: [[Any]]? { nil }
}
