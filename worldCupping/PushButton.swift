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
            Text(isOn ? "X" : "Start")
                .font(isOn ? .title : .largeTitle)
                .foregroundColor(.white)
                .frame(width: isOn ? size / 16 : size / 2 , height: isOn ? size / 16 : size / 6 )
                .background(RadialGradient(gradient: Gradient(colors: onColors), center: .center, startRadius: 5, endRadius: 200
                                ))
                .clipShape(Circle())
                .foregroundColor(.white)
             //   .animation(.easeOut(duration: 0.1))
                
        }).accessibility(label: isOn ? Text("Cancel") : Text("Start Cupping"))
    }
}

struct PushButton_Previews: PreviewProvider {
    static var previews: some View {
        PushButton(isOn: .constant(true), progress: .constant(.zero), size: 800)
    }
}
