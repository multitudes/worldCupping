//
//  PushButton.swift
//  Airlock
//
//  Created by Laurent B on 31/08/2020.
//

import SwiftUI

struct PushButton: View {
    @Binding var isOn: Bool
    @Binding var progress: CGFloat
    
    let title: String = "Start"
    var size: CGFloat
    
    var body: some View {
        Button(action: {
            isOn.toggle()
            if !isOn {
                progress = -1.0
            }
        }, label: {
            Label {
                Text(isOn ? "" : "Start")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: isOn ? 0 : size / 5 , height: isOn ? 0 : size / 5 )
                    .background(isOn ? Color.clear.opacity(0.0) : Color.blue.opacity(0.2))
                    .clipShape(Circle())

            } icon: {
                if self.isOn {
                    Image(systemName: "multiply.circle")
                    .foregroundColor(.white).opacity(0.8)
                    .font(Font.system(size: 8 + size * 0.03))
                } else {
                    EmptyView()
                }
            }
            
            
        }
        ).accessibility(label: isOn ? Text("Cancel") : Text("Start Cupping"))
    }
}

//struct PushButton_Previews: PreviewProvider {
//    static var previews: some View {
//        PushButton(isOn: .constant(true), progress: .constant(.zero), size: 800)
//        PushButton(isOn: .constant(false), progress: .constant(10), size: 800)
//    }
//}
