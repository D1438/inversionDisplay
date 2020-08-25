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
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var coronLabel: UILabel!
    @IBOutlet weak var coron2Label: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    @IBOutlet weak var slash2Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black

        title = "時計"

        changeFont()
        disappearLabel()
        
        Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(appearLabel), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(reloadDate), userInfo: nil, repeats: true)
    }
    
    
    
    @objc func reloadDate() {
//        DateFormatter、Dateのインスタンス生成
        let formatter = DateFormatter()
        let dt = Date()
        let locateData = Locale(identifier: "ja_JP")
        
//        年数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy", options: 0, locale: locateData)
            yearLabel.text = formatter.string(from: dt)
        
//        月数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "MM", options: 0, locale: locateData)
            monthLabel.text = formatter.string(from: dt)
        
//        日数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "dd", options: 0, locale: locateData)
            dayLabel.text = formatter.string(from: dt)
        
//        時数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "HH", options: 0, locale: locateData)
        hourLabel.text = formatter.string(from: dt)
        
//        分数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "mm", options: 0, locale: locateData)
        minutesLabel.text = formatter.string(from: dt)
        
//        秒数に代入
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "ss", options: 0, locale: locateData)
        secondLabel.text = formatter.string(from: dt)
        
        
        coronLabel.text = "："
        coron2Label.text = "："
        
        print(formatter.string(from: dt))
        print("update")
    }
    
    func disappearLabel() {
        yearLabel.isHidden = true
        monthLabel.isHidden = true
        dayLabel.isHidden = true
        hourLabel.isHidden = true
        minutesLabel.isHidden = true
        secondLabel.isHidden = true
        coronLabel.isHidden = true
        coron2Label.isHidden = true
        slashLabel.isHidden = true
        slash2Label.isHidden = true
    }
    
    @objc func appearLabel() {
        yearLabel.isHidden = false
        monthLabel.isHidden = false
        dayLabel.isHidden = false
        hourLabel.isHidden = false
        minutesLabel.isHidden = false
        secondLabel.isHidden = false
        coronLabel.isHidden = false
        coron2Label.isHidden = false
        slashLabel.isHidden = false
        slash2Label.isHidden = false
    }
    
    func changeFont() {
        yearLabel.font = UIFont(name: "Stroke-Light", size: 30.0)
        monthLabel.font = UIFont(name: "Stroke-Light", size: 30.0)
        dayLabel.font = UIFont(name: "Stroke-Light", size: 30.0)
        hourLabel.font = UIFont(name: "Stroke-Light", size: 50.0)
        minutesLabel.font = UIFont(name: "Stroke-Light", size: 50.0)
        secondLabel.font = UIFont(name: "Stroke-Light", size: 50.0)
        coronLabel.font = UIFont(name: "Stroke-Light", size: 50.0)
        coron2Label.font = UIFont(name: "Stroke-Light", size: 50.0)
        slashLabel.font = UIFont(name: "Stroke-Light", size: 30.0)
        slash2Label.font = UIFont(name: "Stroke-Light", size: 30.0)
    }
}
