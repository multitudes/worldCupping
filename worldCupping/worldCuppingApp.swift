//
//  worldCuppingApp.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

@main
struct worldCuppingApp: App {
    var settings = UserSettings()
    var body: some Scene {
        WindowGroup {
            PreLaunch()
                .environmentObject(settings)
        }
    }
}
