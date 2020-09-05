//
//  TitleView.swift
//  Airlock
//
//  Created by Laurent B on 31/08/2020.
//

import SwiftUI

struct TitleView: View {
    
    var progress: CGFloat
    var minutes: Int {
        Int(progress / 60 ) / 10
    }
    var seconds: Int {
        (Int(progress) - Int(progress / 60 / 10) * 60) / 10
    }
    
    var timerIsOn: Bool {
        progress > 0
    }
    
    
    var body: some View {
        if timerIsOn {
            
            Text(String(format: "%02d:%02d", minutes, seconds))
                .font(Font.largeTitle.monospacedDigit())
        } else {
        
        Text("World Cupping")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(.blue)
            .bold()
            .padding(.horizontal)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .animation(.easeIn)
        }
    }
}

