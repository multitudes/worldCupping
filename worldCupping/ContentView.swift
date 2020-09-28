//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.sizeCategory) var sizeCategory
    @StateObject var player = Player()
    @State var showModal: Bool = false
    @State var progress: CGFloat = -5
    @State var isOn: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            if isOn {
                let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
                Text("")
                    .onReceive(timer) { _ in
                        if progress / 10 < 1000 {
                            progress += 0.1
                        }
                    }
            }
            ZStack{
                BackgroundGradient()
                
                SettingsButton(showModal: $showModal)
                    .position(x: geometry.size.width * 0.92, y: isOn ? -geometry.size.width * 0.40 : geometry.size.width * 0.03)
                    .font(Font.system(size: 10 + geometry.size.width * 0.04))
                    .padding(.top, 10)
                
                ZStack {
                    ZStack {
                        
                        BackgroundTimer(geometrySizeWidth: geometry.size.width, progress: $progress)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 1, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 0, delay: 0)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 2, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 72.0, delay: 15)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 3, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 144, delay: 30)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 4, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 216, delay: 45)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 5, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 288, delay: 60)
                    }
                    .frame(idealWidth: geometry.size.width/2, idealHeight: geometry.size.width / 2, alignment: .center)
                    
                }
                
                TitleView(progress: progress)
                    .frame(minWidth: geometry.size.width, maxHeight:300, alignment: .center)
                    .position(x: geometry.size.width / 2 , y: isOn ? geometry.size.height / 15 : geometry.size.height / 10)
                    .animation(Animation.easeInOut(duration: 0.5))

                InfoView(progress: progress, offset: (geometry.size.width / 2) )
                    .animation(.linear(duration: 0.3))
                
                PushButton(isOn: $isOn, progress: $progress, size: geometry.size.width * 1.7)
                    .position(x: isOn ? 5 + geometry.size.width * 0.92 : geometry.size.width / 2 , y: isOn ? geometry.size.width * 0.03 : geometry.size.height / 2)
                    .padding(.top , isOn ? 10 : 0 )
                    .animation(.linear(duration: 0.3))
            }
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .environment(\.sizeCategory, .extraExtraLarge)
            ContentView()
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            ContentView()
                .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
        }
    }
}
