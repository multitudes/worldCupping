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
    @State var showModal: Bool = false
    @State var progress: CGFloat = -5
    @State var isOn: Bool = true

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
                SettingsButton(showModal: $showModal)
                .position(x: geometry.size.width * 0.92, y: geometry.size.width * 0.03)
                .font(Font.system(size: 10 + geometry.size.width * 0.03))
                .ignoresSafeArea()
                .padding(.top, 10)
                
                TitleView(progress: progress)
                .position(x: geometry.size.width / 2 , y: geometry.size.height / 10)
                .frame(minWidth: geometry.size.width, alignment: .center)
                
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
                PushButton(isOn: $isOn, progress: $progress, size: geometry.size.width)
                    .position(x: geometry.size.width / 2 , y: geometry.size.height / 2 + geometry.size.height / 2.5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
