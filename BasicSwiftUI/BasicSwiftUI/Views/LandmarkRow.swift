//
//  LandmarkRow.swift
//  BasicSwiftUI
//
//  Created by Mamikos on 04/05/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var place: Place
    
    var body: some View {
        HStack {
            place.photo
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(12)
                .padding(.trailing)
            Text(place.title)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(place: places[0])
            LandmarkRow(place: places[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
