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
    @Binding var progress: CGFloat
    @Binding var isOn: Bool
    var fillPoint: CGFloat {
        progress / 10 - delay
    }
    var breaking : Bool {
        fillPoint - 240 > 0
    }
    
    var rotationEffectInDegrees: Double
    var delay: CGFloat
    
    var body: some View {
        ZStack {

            Circle()
                .stroke(Color.red, lineWidth: lineWidth)
                .frame(width: geometrySizeWidth / 8  , height: geometrySizeWidth / 8)
                .opacity(0.4)
            Circle()
                .trim(from: 0.0, to: fillPoint > 0 ? fillPoint / 15 : 0.0)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                )
                .frame(width: geometrySizeWidth / 3.1  , height: geometrySizeWidth / 3.1)
                .rotationEffect(.degrees(-90-rotationEffectInDegrees))
            
                     
            Circle()
                .trim(from: 0.0, to: fillPoint - 240 > 0 ? (fillPoint - 240) / 15 : 0.0)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(lineWidth: lineWidth * 0.9 , lineCap: .butt)
                )
                .frame(width: geometrySizeWidth / 5.1  , height: geometrySizeWidth / 5.1)
                .rotationEffect(.degrees(-90-rotationEffectInDegrees))
            
            Text("\(cupNumber)")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(20)
                .background(Circle())
                .foregroundColor(Color.blue )
                //.foregroundColor(.blue)
                .frame(width: geometrySizeWidth / 4  , height: geometrySizeWidth / 4)
                .rotationEffect(Angle.degrees( -rotationEffectInDegrees))
        }.offset(y: -(geometrySizeWidth / 3 ))
        .rotationEffect(Angle.degrees(rotationEffectInDegrees))
    }
}

struct OneCupOfCoffee_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OneCupOfCoffee(geometrySizeWidth: 400, cupNumber: 1, progress: .constant(2450), isOn: .constant(true), rotationEffectInDegrees: 0.0, delay: 0)
                .preferredColorScheme(.dark)

            
        }
    }
}
