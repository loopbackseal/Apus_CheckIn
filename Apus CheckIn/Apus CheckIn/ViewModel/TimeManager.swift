//
//  TimeManager.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/21.
//

import Foundation

class TimeManager {
    var time: String
    init() {
        self.time = ProcessTime.getTime()
    }
}
