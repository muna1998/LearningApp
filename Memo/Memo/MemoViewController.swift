//
//  MemoViewController.swift
//  Memo
//
//  Created by 西濱夢成 on 2019/02/26.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    var memo:String?

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton  else {
            return
        }
        self.memo = self.memoTextField.text ?? ""
    }
}
