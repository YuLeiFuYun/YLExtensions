//
//  ColorCell.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

class ColorCell: UICollectionViewCell {
    override func configure(_ model: Any?) {
        guard let model = model as? Color else { return }
        backgroundColor = color(by: model.rgb)
    }
}

private extension ColorCell {
    func color(by rgb: String) -> UIColor {
        var nums: [Int] = []
        for i in rgb.dropFirst() {
            let num = Int(String(i), radix: 16)!
            nums.append(num)
        }
        
        let red = nums[0] * 16 + nums[1]
        let green = nums[2] * 16 + nums[3]
        let blue = nums[4] * 16 + nums[5]
        
        return UIColor(
            displayP3Red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: 1
        )
    }
}
