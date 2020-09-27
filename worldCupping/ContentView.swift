//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI


// import this
import AVFoundation

struct ContentView: View {
    @Environment(\.sizeCategory) var sizeCategory
    @State var showModal: Bool = false
    @State var progress: CGFloat = -5
    @State var isOn: Bool = false
    
    // create a sound ID, in this case its the tweet sound.
    let systemSoundID: SystemSoundID = 1200
    
    
    var body: some View {
        GeometryReader { geometry in
            if isOn {
                let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
                Text("")
                    .onReceive(timer) { _ in
                        if progress / 10 < 75 {
                            
                            progress += 0.1
                            if progress > 1 || progress < 2 {
                                //AudioServicesPlaySystemSound(systemSoundID)
                            }
                        } else {
                            isOn = false
                            progress = 0
                            // present pop over
                            //                            withAnimation(Animation.easeInOut(duration: 0.3)) {
                            //                                showPopup = true
                            //                            }
                            
                        }
                    }//.frame(minWidth: geometry.size.width, alignment: .center)
            }
            ZStack{
                BackgroundGradient()
                
                SettingsButton(showModal: $showModal)
                    .position(x: geometry.size.width * 0.92, y: isOn ? -geometry.size.width * 0.15 : geometry.size.width * 0.03)
                    .font(Font.system(size: 10 + geometry.size.width * 0.04))
                    .ignoresSafeArea()
                    .padding(.top, 10)
                   // .animation(Animation.easeInOut(duration: 0.5))
                
                    
                TitleView(progress: progress)
                   // .scaleEffect(sizeCategory == .accessibilityExtraExtraLarge ? CGSize(width: 0.6, height: 0.6) : CGSize(width: 1.0, height: 1.0))
                    .frame(minWidth: geometry.size.width, maxHeight:300, alignment: .center)
                    .position(x: geometry.size.width / 2 , y: geometry.size.height / 10)
                
                 
                
                ZStack {
                    ZStack {
                        
                        BackgroundTimer(geometrySizeWidth: geometry.size.width, progress: $progress)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 1, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 0, delay: 0)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 2, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 72.0, delay: 15)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 3, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 144, delay: 30)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 4, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 216, delay: 45)
                        
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 5, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 288, delay: 60)
                        
                        
                    }.frame(idealWidth: geometry.size.width/1.5, idealHeight: geometry.size.width / 1.5, alignment: .center)
                   
                    
                }.fixedSize()
                .position(x: geometry.size.width / 2 , y: geometry.size.height / 2)
                
                InfoView(progress: progress, height: (geometry.size.height / 2 - geometry.size.width / 2) * 1.6)
                
                PushButton(isOn: $isOn, progress: $progress, size: geometry.size.width * 1.7)
                    .position(x: isOn ? geometry.size.width * 0.92 : geometry.size.width / 2 , y: isOn ? geometry.size.width * 0.03 : geometry.size.height / 2)
                   // .ignoresSafeArea()
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
