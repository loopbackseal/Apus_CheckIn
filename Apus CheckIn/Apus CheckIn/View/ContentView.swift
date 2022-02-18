//
//  ContentView.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/10.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @ObservedObject var locationManager: LocationManager
    var uuidManager: UUIDManager
    let intraId: String = "hakim"
//     DB의 idfv와 기기의 idfv를 비교해 받아올 예정
    
    var body: some View {
        VStack {
            Text("Apus Check-In")
                .font(.largeTitle)
                .fontWeight(.thin)
            Spacer()
            EntranceButton(isInLocation: locationManager.isNear).padding(.bottom)
            Spacer()
            Text("IntraID: \(uuidManager.intraID)")
                .font(.title2).fontWeight(.ultraLight)
            Text("My distance from Cluster: \(Int(locationManager.myDistanceFromCluster)) meter")
                .font(.title2).fontWeight(.ultraLight)
                .padding(.bottom)
                .multilineTextAlignment(.center)
        }
    }
}

struct EntranceButton: View {
    var isInLocation: Bool
    var body: some View {
        Button {
            //action has to be defined
        } label: {
            if isInLocation == true {
                Image("coloredApus").resizable()
            } else {
                Image("uncoloredApus").resizable()
            }
        }
        .frame(width: self.buttonWidth(),
               height: self.buttonHeight())
        .disabled(!isInLocation)
    }
    
    private func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 1.2
    }
    
    private func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 1.2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let locationManager = LocationManager()
        let uuidManager = UUIDManager(uuid: UIDevice.current.identifierForVendor!.uuidString)
        ContentView(
            locationManager: locationManager,
            uuidManager: uuidManager
        )
    }
}
//import SwiftUI
//import CoreLocation
//
//
//struct test: View {
//    
//    var currentLoc: CLLocation?
//    @State var curLon: Double
//    @State var curLat: Double
//    var uuid = UIDevice.current.identifierForVendor?.uuidString
//    
//    init() {
//        locationManager.requestLocation()
//        if let currentLoc = locationManager.location {
//            curLon = currentLoc.coordinate.longitude
//            curLat = currentLoc.coordinate.latitude
//        } else {
//            curLon = 0.0
//            curLat = 0.0
//        }
//    }
//    
//    var body: some View {
//        VStack {
//            Text("Hello Swift!")
//            Button(action: {
//                if let currentLoc = locationManager.location {
//                    curLon = currentLoc.coordinate.longitude
//                    curLat = currentLoc.coordinate.latitude
//                } else {
//                    curLon = 100
//                    curLat = 100
//                }
//                print(String(format: "%f", curLon))
//                print(String(format: "%f", curLat))
//                print(uuid!)
//                
//            }) {
//                Image("Unknown")
//                    .resizable()
//                    .frame(width: 200, height: 200, alignment: .center)
//            }
//            .padding(.bottom, 60)
//        }
//    }
//}
//
//struct test_Previews: PreviewProvider {
//    static var previews: some View {
//        test()
//    }
//}
