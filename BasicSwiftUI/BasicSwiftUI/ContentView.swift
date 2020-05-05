//
//  ContentView.swift
//  BasicSwiftUI
//
//  Created by Mamikos on 30/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .dark)
        }
    }
}
