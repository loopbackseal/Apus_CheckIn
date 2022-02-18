//
//  UUIDManager.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/18.
//

import Foundation

class UUIDManager: ObservableObject {
    var UUID: String
    var intraID: String
    private let processUUID = ProcessUUID()
    init(uuid: String) {
        self.UUID = uuid
        print(uuid) // 추후 삭제할 것
        self.intraID = ProcessUUID.getIntraByUUID(uuid: uuid)
    }
}
