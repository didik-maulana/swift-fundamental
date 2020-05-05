//
//  LandmarkList.swift
//  BasicSwiftUI
//
//  Created by Mamikos on 05/05/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(places) { place in
                NavigationLink(destination: LandmarkDetail(place: place)) {
                    LandmarkRow(place: place)
                }
            }
            .navigationBarTitle(Text("Indonesian Places"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone X"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
