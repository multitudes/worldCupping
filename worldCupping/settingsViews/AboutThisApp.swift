//
//  AboutThisApp.swift
//  Airlock
//
//  Created by Laurent B on 29/08/2020.
//

import SwiftUI

struct AboutThisApp: View {
    @EnvironmentObject var settings: UserSettings
    let aboutThisApp1: String = """
    James Hoffmann launched the first World Wide Coffee Cupping in 2019, and this app is a sort of homage to the idea.
    Coffee professional from all over the world receives five samples of each a different coffee to cup. Tasting the coffee in this way is usually referred to as cupping in professional coffee circles.
    You can read everything about this event on the internet under:
    """
    let aboutThisApp2: String = """
    This app provides a timer allowing 15 seconds per cup to pour the water and then alerting after four minutes when it is time to break.
    To do this, you will use a spoon and gently stir and break the upper crust of coffee which has formed on the surface and at the same time smell the wet aromas.
    After this action, repeated five times for each cup, the timer goes on for another four minutes after then it is ok to start slurping the coffee taking a bit of it in your spoon if the temperature allows it.
    The coffee will eventually cool down, and the cupping finishes after 15 minutes.
    """
    var body: some View {
        ScrollView {
            Text("About This App").font(.title).bold()
                //.padding()
            
            Text(aboutThisApp1)
                .font(.body).padding(20)
            Link("https://www.worldslargestcoffeetasting.com", destination: URL(string: "https://www.worldslargestcoffeetasting.com")!)
                .font(.body)
                .foregroundColor(.blue)
                .padding(20)
            Text(aboutThisApp2)
                .font(.body).padding(20)
            Spacer()
        }
        //
        //.multilineTextAlignment(.center)
    }
}

struct AboutThisApp_Previews: PreviewProvider {
    static var previews: some View {
        AboutThisApp()
    }
}
