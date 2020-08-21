//
//  Pageable.swift
//  YLExtensions
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import Foundation

public protocol Pageable {
    var nextPage: Int? { get }
}

extension Pageable {
    public var nextPage: Int? { nil }
}
