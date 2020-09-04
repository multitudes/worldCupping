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
            Text(isOn ? "\(Int(progress/10))" : "Start")
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: isOn ? size / 2 : size / 2 , height: isOn ? size / 2 : size / 6 )
                .background(RadialGradient(gradient: Gradient(colors: onColors), center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 200
                                ))
                .clipShape(Capsule())
                .foregroundColor(.white)
               // .shadow(color: Color.red ,radius: isOn ? 50 : 5)
                .animation(.easeOut(duration: 0.8))
                
        }).accessibility(label: isOn ? Text("Cancel") : Text("Start 2 minutes meditation"))
    }
}
