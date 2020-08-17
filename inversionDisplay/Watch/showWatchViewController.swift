//
//  showWatchViewController.swift
//  inversionDisplay
//
//  Created by 石澤大輔 on 2020/08/15.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class showWatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "時計"
        // Do any additional setup after loading the view.
    }
    
    let dt = Date()
    let dateFormatter = DateFormatter()
    let locateData = Locale(identifier: "ja_JP")
    
    
    @IBAction func oshiteButton(_ sender: UIButton) {
        print("押されたよ！")
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyyMMddHmsEE", options: 0, locale: locateData)
        print(dateFormatter.string(from: dt))
    }
    

}
