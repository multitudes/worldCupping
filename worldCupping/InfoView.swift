//
//  InfoView.swift
//  worldCupping
//
//  Created by Laurent B on 27/09/2020.
//

import SwiftUI


struct InfoView: View {
    
    var progress: CGFloat
    var height: CGFloat
    var timerIsOn: Bool {
        progress > 0
    }
    var text: String {
        switch progress {
            case 0:
                return "When You Are Ready Press Start"
            case 1..<15:
                return "POUR COFFEE 1"
            case 15..<30:
                return "POUR COFFEE 2"
            case 30..<45:
                return "POUR COFFEE 3"
            case 45..<60:
                return "POUR COFFEE 4"
            case 60..<75:
                return "POUR COFFEE 5"
            case 75..<200:
                return "Wait..."
            case 200..<240:
                return "Prepare to Break"
            case 240..<255:
                return "Break 1"
            case 255..<270:
                return "Break 2"
            case 270..<285:
                return "Break 3"
            case 285..<300:
                return "Break 4"
            case 300..<315:
                return "Break 5"
            case 315..<480:
                return "Wait for the coffee to cool down"
            case 480..<900:
                return "If The Temperature Allows It, You Can Start Cupping"
            default:
                return "Cupping is Finished!"
        }
    }
    
    
    var body: some View {
        
        
        Text(text)
            .font(.custom("Helvetica", size: 22, relativeTo: .headline))
            .foregroundColor(.white)
            .bold()
            .padding(.horizontal, 20)
            .minimumScaleFactor(0.5)
            .lineLimit(4)
            .multilineTextAlignment(.center)
            
            .opacity(0.8)
            .offset(y: height)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView(progress: 0.0, height: 200)
                .preferredColorScheme(.dark)
            InfoView(progress: 1.0, height: 200.0)
                .preferredColorScheme(.dark)
            
        }
    }
}
