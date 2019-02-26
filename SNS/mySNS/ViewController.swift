//
//  ViewController.swift
//  mySNS
//
//  Created by 西濱夢成 on 2019/02/23.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        let controller = UIActivityViewController(activityItems: [imageView.image!],applicationActivities: nil)
        self.present(controller, animated: true, completion: {print("表示完了")})
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

