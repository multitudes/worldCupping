//
//  MinutesSecondsTimer.swift
//  worldCupping
//
//  Created by Laurent B on 05/09/2020.
//

import SwiftUI

struct MinutesSecondsTimer: View {
    
    var progress: CGFloat
    var minutes: Int {
        Int(progress / 60 )
    }
    var seconds: Int {
        Int(progress) - (Int(progress / 60 ) * 60)
    }
    
    @State var timerIsOn: Bool = true
    
    
    var body: some View {
        if timerIsOn {
            Text("\(minutes):\(seconds)")
                .font(.system(size: 30, design: .monospaced))
                
        }
    }
}

struct MinutesSecondsTimer_Previews: PreviewProvider {
    static var previews: some View {
        MinutesSecondsTimer(progress: 112.0)
    }
}
