//
//  ViewController.swift
//  OmukuziApp
//
//  Created by 西濱夢成 on 2019/02/01.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuzi(_ sender: Any) {
        let results = ["大吉", "中吉", "小吉", "吉", "凶", "大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        self.myLabel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        myLabel.layer.borderColor = UIColor.orange.cgColor
//        myLabel.layer.borderWidth = 5
//        myLabel.layer.cornerRadius = 50
        myLabel.layer.masksToBounds = true
       myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}

