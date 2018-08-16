//
//  File.swift
//  Pomodoro
//
//  Created by Matt Dias on 8/15/18.
//  Copyright © 2018 Matt Dias. All rights reserved.
//

import Foundation

protocol PomodoroDelegate: AnyObject {
    func timerUpdated(newTime: String)
}

class Pomodoro {
    var timer: Timer?
    var status = "Workin'"
    private let workDuration = TimeInterval(10)
    private let breakDuration = TimeInterval(3)
    private var targetDate: Date = Date.distantFuture

    weak var delegate: PomodoroDelegate?

    func start() {
        targetDate = Date().addingTimeInterval(workDuration)

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            let timeDifference = self.targetDate.timeIntervalSince(Date())
            
            //timeDifference
            let string = "\(Int(timeDifference))"
            self.delegate?.timerUpdated(newTime: string)
            print("\(Int(timeDifference))")
        })
    }
}
