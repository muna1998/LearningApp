//
//  ViewController.swift
//  NameScoreApp
//
//  Created by 西濱夢成 on 2019/02/03.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Nametext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showResult"{
            guard self.Nametext.text != "" else{
                print("no name")
                return false
            }
            return true
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        if identifier == "showResult"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.myName = self.Nametext.text!
        }
       
    }

}

