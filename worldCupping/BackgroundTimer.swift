//
//  BackgroundTimer.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct BackgroundTimer: View {
    var geometrySizeWidth: CGFloat

    @Binding var progress: CGFloat


    var body: some View {
        ZStack {
            // the light red shadow
            Circle()
                .stroke(Color.clear, lineWidth: geometrySizeWidth / 3.5)
                .opacity(0.8)
            // the white progress circle
            Circle()
                .trim(from: 0.0, to: progress / 10 / 480)
                .stroke(
                    Color.red.opacity(0.5),
                    style: StrokeStyle(lineWidth: geometrySizeWidth / 1.5, lineCap: .butt)
                )
                .rotationEffect(.degrees(-90))
        }
        
    }
}


