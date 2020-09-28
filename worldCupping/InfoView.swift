//
//  InfoView.swift
//  worldCupping
//
//  Created by Laurent B on 27/09/2020.
//

import SwiftUI


struct InfoView: View {
    @StateObject var player = Player()
    var progress: CGFloat
    var offset: CGFloat

    var text: String {
        switch progress / 10 {
            case -5..<0:
                if player.isPlaying {
                player.stopSound()
                }
                return "When you are ready press start"
            case 0.1..<10:
                if !player.isPlaying {
                player.playSound()
                }
                return "POUR THE FIRST"
            case 10..<15:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 15..<25:
                if !player.isPlaying {
                player.playSound()
                }
                return "POUR THE SECOND"
            case 25..<30:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 30..<40:
                if !player.isPlaying {
                player.playSound()
                }
                return "POUR THE THIRD"
            case 40..<45:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 45..<55:
                if !player.isPlaying {
                player.playSound()
                }
                return "POUR THE FOURTH"
            case 55..<60:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 60..<70:
                if !player.isPlaying {
                player.playSound()
                }
                return "POUR THE FIFTH"
            case 70..<75:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 75..<200:
                return "Wait..."
            case 200..<240:
                return "Prepare to break"
            case 240..<250:
                if !player.isPlaying {
                player.playSound()
                }
                return "Break 1"
            case 250..<255:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 255..<265:
                if !player.isPlaying {
                player.playSound()
                }
                return "Break 2"
            case 265..<270:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 270..<280:
                if !player.isPlaying {
                player.playSound()
                }
                return "Break 3"
            case 280..<285:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 285..<295:
                if !player.isPlaying {
                player.playSound()
                }
                return "Break 4"
            case 295..<300:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 300..<305:
                if !player.isPlaying {
                player.playSound()
                }
                return "Break 5"
            case 305..<315:
                if player.isPlaying {
                player.stopSound()
                }
                return ""
            case 315..<480:
                return "Wait for the coffee to cool"
            case 480..<900:
                return "Now if the temperature allows, you can start cupping"
            case 900..<1000:
                return "Cupping has finished!"
            default:
                return "When you are ready press start"
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
