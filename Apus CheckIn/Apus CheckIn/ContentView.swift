//
//  ContentView.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/10.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var status: Bool = false
    var userLatitude: Double {
        return locationManager.lastLocation?.coordinate.latitude ?? 0
    }
    
    var userLongitude: Double {
        return locationManager.lastLocation?.coordinate.longitude ?? 0
    }
    //    37.48838707768865, 127.06546968504568
    
    var body: some View {
        VStack {
            Text("Apus CheckIn")
                .bold()
                .font(.system(size: 48))
                .fontWeight(.thin)
                .padding(.top, 30)
            Spacer()
            Button(action: {
                //                37.48815449911871, 127.06476621423361
                print("\(haversineDistance(la1: 37.48815449911871, lo1: 127.06476621423361, la2: userLatitude, lo2: userLongitude))")
                print("lat: \(userLatitude) lon: \(userLongitude)")
            }) {
                if status {
                Image("Unknown")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                } else {
                    Image("Unknown--ConvertImage")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                }
            }
            .padding(.bottom, 60)
            .disabled(!status)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
