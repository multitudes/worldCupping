//
//  TitleView.swift
//  Airlock
//
//  Created by Laurent B on 31/08/2020.
//

import SwiftUI

struct TitleView: View {
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Text("World Cupping")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(.primary)
            .bold()
            .padding(.horizontal)
            .position(x: width / 2 , y: height / 10)
            .frame(minWidth: width, alignment: .center)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .animation(.easeIn)
    }
}

