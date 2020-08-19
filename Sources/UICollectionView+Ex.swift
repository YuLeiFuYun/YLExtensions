//
//  UICollectionView+Ex.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

extension UICollectionView {
    public func registerCells(with cells: [UICollectionViewCell.Type]) {
        for cell in cells {
            register(cell, forCellWithReuseIdentifier: cell.reuseIdentifier)
        }
    }
    
    public func registerNibs(with cells: [UICollectionViewCell.Type]) {
        for cell in cells {
            register(cell.nib, forCellWithReuseIdentifier: cell.reuseIdentifier)
        }
    }
    
    public func registerHeaders(with headers: [UICollectionReusableView.Type]) {
        for header in headers {
            register(
                header,
                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: header.reuseIdentifier
            )
        }
    }
    
    public func registerHeaderNibs(with headerNibs: [UICollectionReusableView.Type]) {
        for headerNib in headerNibs {
            register(
                headerNib,
                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: headerNib.reuseIdentifier
            )
        }
    }
    
    public func registerFooters(with footers: [UICollectionReusableView.Type]) {
        for footer in footers {
            register(
                footer,
                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                withReuseIdentifier: footer.reuseIdentifier
            )
        }
    }
    
    public func registerFooterNibs(with footerNibs: [UICollectionReusableView.Type]) {
        for footerNib in footerNibs {
            register(
                footerNib,
                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                withReuseIdentifier: footerNib.reuseIdentifier
            )
        }
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
    
    public func dequeueReusableHeader<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: T.reuseIdentifier,
            for: indexPath
        ) as! T
    }
    
    public func dequeueReusableFooter<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionFooter,
            withReuseIdentifier: T.reuseIdentifier,
            for: indexPath
        ) as! T
    }
    
    public func dequeueReusableCell(
        for indexPath: IndexPath,
        with cells: [UICollectionViewCell.Type]
    ) -> some UICollectionViewCell {
        for (index, cell) in cells.enumerated() where index == indexPath.section {
            let ccell = dequeueReusableCell(withReuseIdentifier: cell.reuseIdentifier, for: indexPath)
            return ccell
        }
        
        fatalError()
    }
}
