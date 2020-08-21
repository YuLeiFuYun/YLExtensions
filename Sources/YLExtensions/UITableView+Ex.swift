//
//  UITableView+Ex.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

extension UITableView {
    public func registerCells(with cells: [UITableViewCell.Type]) {
        for cell in cells {
            register(cell, forCellReuseIdentifier: cell.reuseIdentifier)
        }
    }
    
    public func registerNibs(with cells: [UITableViewCell.Type]) {
        for cell in cells {
            register(cell.nib, forCellReuseIdentifier: cell.reuseIdentifier)
        }
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
    
    public func dequeueReusableCell(
        for indexPath: IndexPath,
        with cells: [UITableViewCell.Type]
    ) -> some UITableViewCell {
        for (index, cell) in cells.enumerated() where index == indexPath.section {
            let cell = dequeueReusableCell(withIdentifier: cell.reuseIdentifier, for: indexPath)
            return cell
        }
        
        fatalError()
    }
}
