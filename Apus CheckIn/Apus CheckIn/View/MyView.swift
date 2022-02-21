//
//  LocationView.swift
//  Apus CheckIn
//
//  Created by Young Soo Hwang on 2022/02/10.
//

import SwiftUI

struct MyView: View {
    var intraID: String
    let timeManager = TimeManager()
    var body: some View {
        VStack {
            Text(timeManager.time)
            Text(intraID)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(intraID: "test")
    }
}
