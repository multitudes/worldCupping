//
//  PrivacyView.swift
//  Airlock
//
//  Created by Laurent B on 31/08/2020.
//

import SwiftUI

struct PrivacyView: View {
    var body: some View {
        
        VStack {
            Text("Privacy Policy").font(.title).padding(40)

            Text("This App does not store any personal information about you.")
            Spacer()
        }.font(.body).padding(20)
        .multilineTextAlignment(.center)
        

        
        
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
