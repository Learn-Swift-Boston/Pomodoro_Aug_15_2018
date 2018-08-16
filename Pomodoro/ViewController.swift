//
//  ViewController.swift
//  Pomodoro
//
//  Created by Matt Dias on 8/15/18.
//  Copyright © 2018 Matt Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!

    let tempPomodoro = Pomodoro()

    override func viewDidLoad() {
        super.viewDidLoad()
        tempPomodoro.start()
        tempPomodoro.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: PomodoroDelegate {
    func timerUpdated(newTime: String) {
        timerLabel.text = newTime
    }
}

