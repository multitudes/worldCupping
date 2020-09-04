//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var showModal: Bool = false
    @State var progress: CGFloat = -5
    @State var isOn: Bool = true
    

    var body: some View {
        GeometryReader { geometry in
        
            if isOn {
                let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
                Text("")
                    .onReceive(timer) { _ in
                        if progress < 120 {
                            progress += 0.1
                        } else {
                            isOn = false
                            // present pop over
//                            withAnimation(Animation.easeInOut(duration: 0.3)) {
//                                showPopup = true
//                            }
                           
                        }
                    }.frame(minWidth: geometry.size.width, alignment: .center)
            }
            ZStack{
                SettingsButton(showModal: $showModal)
                .position(x: geometry.size.width * 0.92, y: geometry.size.width * 0.03)
                .font(Font.system(size: 10 + geometry.size.width * 0.03))
                .ignoresSafeArea()
                .padding(.top, 10)
                
              //  TitleView(width: geometry.size.width, height: geometry.size.height)
            
                
                ZStack {
                    ZStack {
                       
                        BackgroundTimer(geometrySizeWidth: geometry.size.width, progress: $progress)
                       
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 1, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 0)
                      
                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 2, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 72.0)

                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 3, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 144)

                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 4, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 216)

                        OneCupOfCoffee(geometrySizeWidth: geometry.size.width, cupNumber: 5, showModal: $showModal, progress: $progress, isOn: $isOn, rotationEffectInDegrees: 288)

                        
                    }.frame(idealWidth: geometry.size.width/1.5, idealHeight: geometry.size.width / 1.5, alignment: .center)
                    //.rotationEffect(.degrees(-45))
                }
                    .fixedSize()
                    .position(x: geometry.size.width / 2 , y: geometry.size.height / 2)
            

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
