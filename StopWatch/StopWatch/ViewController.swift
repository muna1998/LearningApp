//
//  ViewController.swift
//  StopWatch
//
//  Created by 西濱夢成 on 2019/02/13.
//  Copyright © 2019 西濱夢成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var startTime: TimeInterval? = nil
    var timer = Timer()
    var elapsedTime = 0.0
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setButtonEnabled(start: true, stop: false, reset: false)
    }
    
    func setButtonEnabled(start: Bool, stop: Bool, reset: Bool){
        self.startButton.isEnabled = start
        self.stopButton.isEnabled = stop
        self.resetButton.isEnabled = reset
    }

    @objc func update(){
        if let startTime = self.startTime{
            let t: Double = Date.timeIntervalSinceReferenceDate -
            startTime + self.elapsedTime
            let min = Int(t / 60)
            let sec = Int(t) % 60
            let msec = Int((t - Double(min * 60) - Double(sec)) * 100.0)
            self.timerLabel.text = String(
                format: "%02d:%02d:%02d", min, sec, msec)
        }
    }
    
    @IBAction func startTimer(_ sender: Any) {
        setButtonEnabled(start: false, stop: true, reset: false)
        self.startTime = Date.timeIntervalSinceReferenceDate
        self.timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.update),
            userInfo: nil,
            repeats: true)
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        setButtonEnabled(start: true, stop: false, reset: true)
        if let startTime = self.startTime{
            self.elapsedTime += Date.timeIntervalSinceReferenceDate - startTime
            self.timer.invalidate()
        }
        
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        setButtonEnabled(start: true, stop: false, reset: false)
        self.startTime = nil
        self.timerLabel.text = "00:00:00"
        self.elapsedTime = 0.0
    }
}

