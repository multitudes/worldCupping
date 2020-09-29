//
//  BackgroundTimer.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct BackgroundTimer: View {
    var geometrySizeHeight: CGFloat

    @Binding var progress: CGFloat


    var body: some View {
        ZStack {
            
//            Circle()
//                .stroke(Color.clear, lineWidth: geometrySizeHeight )
//               // .opacity(0.8)
//            // the progress circle
            Circle()
                .trim(from: 0.0, to: progress / 10 / 480)
                .stroke(
                    Color.red.opacity(0.5),
                    style: StrokeStyle(lineWidth: geometrySizeHeight / 2 , lineCap: .butt)
                )
                .rotationEffect(.degrees(-90))
        }
        
    }
}


