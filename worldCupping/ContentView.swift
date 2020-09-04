//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var showModal: Bool = false
    var body: some View {
        GeometryReader { geometry in
        SettingsButton(showModal: $showModal)
            .position(x: geometry.size.width * 0.92, y: geometry.size.width * 0.03)
            .font(Font.system(size: 10 + geometry.size.width * 0.03))
            .ignoresSafeArea()
            .padding(.top, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
