//
//  Apus_CheckInApp.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/10.
//

import SwiftUI

@main
struct Apus_CheckInApp: App {
    let locationManager = LocationManager()
    let uuidManager = UUIDManager(uuid: UIDevice.current.identifierForVendor!.uuidString)
    var body: some Scene {
        WindowGroup {
            ContentView(
                locationManager: locationManager,
                uuidManager: uuidManager
            )
        }
    }
}
