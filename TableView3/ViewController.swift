//
//  ViewController.swift
//  TableView3
//
//  Created by くりすせいま on 2020/09/24.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sampleTable: UITableView!
    
let prefectures = ["北海道・札幌市","青森県・青森市","岩手県・盛岡市","宮城県・仙台市","秋田県・秋田市","山形県・山形市","埼玉県・さいたま市","千葉県・千葉市","東京都・新宿区","神奈川県・横浜市","大阪府・大阪市","京都府・京都市"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleTable.dataSource = self
    }
}

//拡張を使う
extension ViewController: UITableViewDataSource {
    //セクション数を決める
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //セクションごとの行数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    //各行に表示させるテキストを作る
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルの取得
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        //テキストの設定
        cell.textLabel?.text = prefectures[indexPath.row]
        //セルを返す
        return cell
    }
}
