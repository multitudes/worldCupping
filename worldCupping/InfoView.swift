//
//  InfoView.swift
//  worldCupping
//
//  Created by Laurent B on 27/09/2020.
//

import SwiftUI


struct InfoView: View {
    
    var progress: CGFloat
    var offset: CGFloat
    var timerIsOn: Bool {
        progress > 0
    }
    var text: String {
        switch progress {
            case 0:
                return "When you are ready press start"
            case 1..<10:
                return "POUR"
            case 10..<15:
                return ""
            case 15..<25:
                return "POUR"
            case 25..<30:
                return ""
            case 30..<40:
                return "POUR"
            case 40..<45:
                return ""
            case 45..<55:
                return "POUR"
            case 55..<60:
                return ""
            case 60..<70:
                return "POUR"
            case 60..<70:
                return ""
            case 70..<200:
                return "Wait..."
            case 200..<240:
                return "Prepare to break"
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
                return "Wait for the coffee to cool"
            case 480..<900:
                return "Now if the temperature allows, you can start cupping"
            default:
                return "Cupping has finished!"
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
            .offset(y: offset)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView(progress: 0.0, offset: 200)
                .preferredColorScheme(.dark)
            InfoView(progress: 1.0, offset: 200.0)
                .preferredColorScheme(.dark)
            
        }
    }
}
