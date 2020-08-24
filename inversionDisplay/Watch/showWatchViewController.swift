//
//  showWatchViewController.swift
//  inversionDisplay
//
//  Created by 石澤大輔 on 2020/08/15.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class showWatchViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "時計"
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(reloadDate), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func oshiteButton(_ sender: UIButton) {
        print("押されたよ！")

    }
    
    
    @objc func reloadDate() {
        let dateFormatter = DateFormatter()
        let dt = Date()
        let locateData = Locale(identifier: "ja_JP")
//        年数に代入
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyyMMdd", options: 0, locale: locateData)
        dateLabel.text = dateFormatter.string(from: dt)
        
        
//        時数に代入
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "HHmmss", options: 0, locale: locateData)
        timeLabel.text = dateFormatter.string(from: dt)
        
        
        print(dateFormatter.string(from: dt))
        print("update")
    }
}
