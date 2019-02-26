//
//  ResultViewController.swift
//  NameScoreApp
//
//  Created by 西濱夢成 on 2019/02/03.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var myName: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = "\(self.myName)'is score is ..."
        
        self.scoreLabel.text = String(arc4random_uniform(101))
        
//        print(myName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
