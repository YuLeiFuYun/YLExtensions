//
//  FirstViewController.swift
//  YLExtensions-Demo
//
//  Created by 玉垒浮云 on 2020/8/18.
//

import UIKit
import YLExtensions

let texts = [
    Text(text: "《昼苦短》李贺"),
    Text(text: "飞光飞光，劝尔一杯酒。"),
    Text(text: "吾不识青天高，黄地厚。"),
    Text(text: "惟见月寒日暖，来煎人寿。"),
    Text(text: "食熊则肥，食蛙则瘦。"),
    Text(text: "神君何在？太一安有？"),
    Text(text: "天东有若木，下置衔烛龙。"),
    Text(text: "吾将斩龙足，嚼龙肉，使之朝不得回，夜不得伏。"),
    Text(text: "自然老者不死，少者不哭。"),
    Text(text: "何为服黄金，吞白玉？"),
    Text(text: "谁是任公子，云中骑碧驴？"),
    Text(text: "刘彻茂陵多滞骨，嬴政梓棺费鲍鱼。"),
]

let urlAttributes: [NSAttributedString.Key: Any] = [
    .font: UIFont.preferredFont(forTextStyle: .body),
    .foregroundColor: UIColor.systemGray,
    .underlineStyle: NSUnderlineStyle.single.rawValue
]

let links = [
    Link(url: NSAttributedString(string: "https://github.com/", attributes: urlAttributes)),
    Link(url: NSAttributedString(string: "https://stackoverflow.com/", attributes: urlAttributes)),
    Link(url: NSAttributedString(string: "https://www.google.com/", attributes: urlAttributes)),
]

let emojis = [Emoji(emoji: "🦆"), Emoji(emoji: "🦅"), Emoji(emoji: "🦉")]

class FirstViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let firstModel = FirstModel(texts: texts, links: links, emojis: emojis)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerCells(with: FirstModel.tCells!)
        tableView.registerNibs(with: FirstModel.tNibs!)
        
        tableView.rowHeight = 80
    }

}

extension FirstViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        firstModel.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        firstModel.data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, with: FirstModel.tAll!)
        cell.configure(firstModel.data[indexPath.section][indexPath.row])
        return cell
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
