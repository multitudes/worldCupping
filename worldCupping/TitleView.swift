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
        (Int(progress / 10) - Int(progress / 60 / 10) * 60) 
    }
    
    var timerIsOn: Bool {
        progress > 0
    }
    
    
    var body: some View {
        if timerIsOn {
            Text(String(format: "%02d:%02d", minutes, seconds))
                .font(Font.largeTitle.monospacedDigit())
                .foregroundColor(.white)
                .bold()
                .opacity(0.8)
                
        } else {
                Text("World Coffee Cupping")
                    .font(.custom("Helvetica", size: 33, relativeTo: .headline))
                    .tracking(4)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                    .minimumScaleFactor(0.1)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                    .textCase(.uppercase)
                    .offset(y: 20)
                    .opacity(0.8)
        }
        
    }
}

