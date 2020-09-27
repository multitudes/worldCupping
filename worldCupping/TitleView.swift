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
                .foregroundColor(.blue)
                .bold()
        } else {
            
            VStack{
                //Spacer( 40)
                Text("World Coffee Cupping")
                    .font(.custom("Helvetica", size: 33))
                    .tracking(4)
                    //.font(.largeTitle)
                    //.font(Font.custom("Copperplate", size: 20))
                    .fontWeight(.black)
                    .foregroundColor(.blue)
                    .bold()
                    .padding(.horizontal)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .textCase(.uppercase)
                    .offset(y: 20)
                
            }
            
        }
        
    }
}

