//
//  SwiftUIView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct CircleCup: View {
    @Binding var timerIsOn: Bool
    @Binding var progress: CGFloat
    var cuppingTime: CGFloat = 240
    var frameSize: CGFloat?
    var lineWidth: CGFloat { frameSize! / 2 }
    var strokeColor: Color {
        Color.red
    }
    
    var body: some View {
        
        ZStack {
            // the light red shadow
            Circle()
                .stroke(strokeColor, lineWidth: lineWidth)
                .opacity(0.3)
            Circle()
                                
                                .offset(y: -frameSize! / 2 )
                                .foregroundColor(Color.white)
                                .rotationEffect(Angle.degrees(360 * Double(progress / 120)))
                                .shadow(color: Color.black.opacity(0.2), radius: frameSize! / 250 , x: frameSize! / 250, y: 0)
        }.border(Color.clear, width: 0)
        .frame(width: lineWidth, height: lineWidth)
        
    }
}

