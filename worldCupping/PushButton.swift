//
//  PushButton.swift
//  Airlock
//
//  Created by Laurent B on 31/08/2020.
//

import SwiftUI

struct PushButton: View {
    @Binding var isOn: Bool
    @Binding var progress: CGFloat
    
    let title: String = "Start"
    var size: CGFloat
    var onColors = [Color.blue.opacity(0.8), Color.blue.opacity(0.1)]
    
    var body: some View {
        Button(action: {
            isOn.toggle()
            if !isOn {
                progress = 0.0
            }
        }, label: {
            Text(isOn ? "Cancel" : "Start")
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: size / 2 , height: size / 6 )
                .background(RadialGradient(gradient: Gradient(colors: onColors), center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 200
                                ))
                .clipShape(Capsule())
                .foregroundColor(.white)
                .animation(.easeOut(duration: 0.1))
                
        }).accessibility(label: isOn ? Text("Cancel") : Text("Start Cupping"))
    }
}
