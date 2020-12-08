//
//  editViewController.swift
//  inversionDisplay
//
//  Created by 石澤大輔 on 2020/10/10.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class editViewController: UIViewController {
    
    @IBOutlet weak var fontChengeLabel: UILabel!
    @IBOutlet weak var fontChangeSwitcher: UISwitch!
    
    var fontChangeFlag: String = "off"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fontChengeLabel.font = fontChengeLabel.font.withSize(15.0)
        fontChengeLabel.text = "タップでフォントを切り替える。"
        fontChangeSwitcher.setOn(false, animated: true)
    }
    
    @IBAction func fontChange(_ sender: UISwitch) {
        if sender.isOn {
            fontChangeFlag = "on"
        } else {
            fontChangeFlag = "off"
        }
    }
    
    
}
