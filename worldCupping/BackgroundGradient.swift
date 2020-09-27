//
//  BackgroundGradient.swift
//  worldCupping
//
//  Created by Laurent B on 27/09/2020.
//

import SwiftUI

struct BackgroundGradient: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.gradientStartCoffee, Color.gradientEndCoffee]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
    
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient()
    }
}
