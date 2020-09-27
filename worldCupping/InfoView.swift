//
//  InfoView.swift
//  worldCupping
//
//  Created by Laurent B on 27/09/2020.
//

import SwiftUI


struct InfoView: View {
    
    var progress: CGFloat
    
    var timerIsOn: Bool {
        progress > 0
    }
    
    
    var body: some View {
        Text("Prepare")
            .font(.custom("Helvetica", size: 22))
            .tracking(0)
            .fontWeight(.black)
            .foregroundColor(.blue)
            .bold()
            .padding(.horizontal)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .textCase(.uppercase)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(progress: 1.0)
    }
}
