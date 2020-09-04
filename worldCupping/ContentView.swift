//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var showModal: Bool = false
    @State var progress: CGFloat = 1.0
    @State var isOn: Bool = true
    
    var body: some View {
        GeometryReader { geometry in
        
            ZStack{
                SettingsButton(showModal: $showModal)
                .position(x: geometry.size.width * 0.92, y: geometry.size.width * 0.03)
                .font(Font.system(size: 10 + geometry.size.width * 0.03))
                .ignoresSafeArea()
                .padding(.top, 10)
                
            TitleView(width: geometry.size.width, height: geometry.size.height)
            
            ActivityRingView(timerIsOn: $isOn, progress: $progress, frameSize: geometry.size.width / 1.5 )
                    .fixedSize()
                    .position(x: geometry.size.width / 2 , y: geometry.size.height / 2)
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
