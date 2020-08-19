//
//  ImageCell.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    override func configure(_ model: Any?) {
        guard let model = model as? Image else { return }
        let url = Bundle.main.url(forResource: model.name, withExtension: nil)!
        let image = UIKit.resizedImage(at: url, for: contentView.frame.size)
        
        DispatchQueue.main.async {
            UIView.transition(
                with: self.imageView,
                duration: 2.0,
                options: [.curveEaseOut, .transitionCrossDissolve],
                animations: {
                    self.imageView.image = image
                },
                completion: nil
            )
        }
    }

}

enum UIKit {
    static func resizedImage(at url: URL, for size: CGSize) -> UIImage? {
        guard let image = UIImage(contentsOfFile: url.path) else {
            return nil
        }
        
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { (context) in
            image.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
