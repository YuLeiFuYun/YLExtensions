//
//  ModelType.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

public protocol ModelType: Pageable {
    // to be registered table view cell
    static var tCells: [UITableViewCell.Type]? { get }
    static var tNibs: [UITableViewCell.Type]? { get }
    // All cell types to be registered, sort by display order
    static var tAll: [UITableViewCell.Type]? { get }
    
    // to be registered collection view cell and collection reusable view
    static var cCells: [UICollectionViewCell.Type]? { get }
    static var cNibs: [UICollectionViewCell.Type]? { get }
    // Contains cCells and cNibs, sort by display order
    static var cAll: [UICollectionViewCell.Type]? { get }
    static var headViews: [UICollectionReusableView.Type]? { get }
    static var footerViews: [UICollectionReusableView.Type]? { get }
    static var headerNibs: [UICollectionReusableView.Type]? { get }
    static var footerNibs: [UICollectionReusableView.Type]? { get }
    
    // Store model data in display order
    var data: [[Any]]? { get set }
}

extension ModelType {
    public static var tCells: [UITableViewCell.Type]? { nil }
    public static var tNibs: [UITableViewCell.Type]? { nil }
    public static var tAll: [UITableViewCell.Type]? { nil }
    
    public static var cCells: [UICollectionViewCell.Type]? { nil }
    public static var cNibs: [UICollectionViewCell.Type]? { nil }
    public static var cAll: [UICollectionViewCell.Type]? { nil }
    public static var headViews: [UICollectionReusableView.Type]? { nil }
    public static var footerViews: [UICollectionReusableView.Type]? { nil }
    public static var headerNibs: [UICollectionReusableView.Type]? { nil }
    public static var footerNibs: [UICollectionReusableView.Type]? { nil }
}
