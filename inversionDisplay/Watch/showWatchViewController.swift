//
//  showWatchViewController.swift
//  inversionDisplay
//
//  Created by 石澤大輔 on 2020/08/15.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class showWatchViewController: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "時計"
        // Do any additional setup after loading the view.
    }
    
    let dt = Date()
    let year = DateFormatter()
    let month = DateFormatter()
    let locateData = Locale(identifier: "ja_JP")
    
    
    @IBAction func oshiteButton(_ sender: UIButton) {
        print("押されたよ！")
        
        reloadDate()
        reloadLabel()
    }
    
    func reloadDate() {
        year.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy", options: 0, locale: locateData)
        month.dateFormat = DateFormatter.dateFormat(fromTemplate: "M", options: 0, locale: locateData)
    }
    
    func reloadLabel() {
        
        yearLabel.text = year.string(from: dt)
        monthLabel.text = month.string(from: dt)
    }
}
