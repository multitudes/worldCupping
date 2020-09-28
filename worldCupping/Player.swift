//
//  Player.swift
//  worldCupping
//
//  Created by Laurent B on 28/09/2020.
//

import Foundation
import AVKit
import Combine


class Player: ObservableObject {
    var sound: AVAudioPlayer?
    let willChange = PassthroughSubject<Player, Never>()

    @Published var isPlaying: Bool = false {
        willSet {
            willChange.send(self)
        }
    }

    func playSound() {
        if let path = Bundle.main.path(forResource: "bip", ofType: "aiff") {
                   do {
                       sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                       print("Playing sound ")
                       sound?.play()
                   } catch {
                       print( "Could not find file")
                   }
               }
    }
    func stopSound() {
        sound?.stop()
    }
}
