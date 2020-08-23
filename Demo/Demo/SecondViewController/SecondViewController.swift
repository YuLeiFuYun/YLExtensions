//
//  SecondViewController.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit

enum Screen {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
}

let images = [Image(name: "a.jpg"), Image(name: "b.jpg"), Image(name: "c.jpg"), Image(name: "d.jpg")]
let colors = [Color(rgb: "#0041a5"), Color(rgb: "#a71368"), Color(rgb: "#f2de76"), Color(rgb: "#2ec3e7")]

class SecondViewController: UIViewController {

    lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let width = (Screen.width - 30) / 2
        let height = width * 2 / 3
        flowLayout.itemSize = CGSize(width: width, height: height)
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        
        flowLayout.headerReferenceSize = CGSize(width: Screen.width, height: 30)
        
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        return collectionView
    }()
    
    let secondModel = SecondModel(images: images, colors: colors)
    let heads = ["Flower", "Color"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.registerCells(with: SecondModel.cCells!)
        collectionView.registerNibs(with: SecondModel.cNibs!)
        collectionView.registerHeaders(with: secondModel.headViews!)
        
        view.addSubview(collectionView)
    }

}

extension SecondViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        secondModel.data!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        secondModel.data![section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath, with: secondModel.cAll!)
        cell.configure(secondModel.data![indexPath.section][indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let headView: HeadView = collectionView.dequeueReusableHeader(for: indexPath)
            headView.configure(heads[indexPath.section])
            return headView
        }
        
        fatalError()
    }
}
