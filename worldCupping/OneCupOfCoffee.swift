//
//  OneCupOfCoffee.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct OneCupOfCoffee: View {
    var geometrySizeWidth: CGFloat
    var cupNumber: Int
    var lineWidth: CGFloat { geometrySizeWidth * 1.07 / 9.93 / 2}
    @Binding var showModal: Bool
    @Binding var progress: CGFloat
    @Binding var isOn: Bool
    
    var rotationEffectInDegrees: Double
    var delay: CGFloat
    
    var body: some View {
        ZStack {

            Circle()
                .stroke(Color.red, lineWidth: lineWidth)
                .frame(width: geometrySizeWidth / 8  , height: geometrySizeWidth / 2)
                .opacity(0.4)
            Circle()
                .trim(from: 0.0, to: progress / 10 - delay > 0 ? (progress / 10 - delay) / 15 : 0.0)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                )
                .frame(width: geometrySizeWidth / 3.1  , height: geometrySizeWidth / 2)
                .rotationEffect(.degrees(-90-rotationEffectInDegrees))
            Text("\(cupNumber)")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding()
                .background(Circle())
                .foregroundColor(.blue)
                .frame(width: geometrySizeWidth / 3  , height: geometrySizeWidth / 4)
                .rotationEffect(Angle.degrees( -rotationEffectInDegrees))
        }.offset(y: -(geometrySizeWidth / 3 ))
        .rotationEffect(Angle.degrees(rotationEffectInDegrees))
    }
}


