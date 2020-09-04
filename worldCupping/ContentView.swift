//
//  ContentView.swift
//  worldCupping
//
//  Created by Laurent B on 04/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var showModal: Bool = false
    @State var progress: CGFloat = 100.0
    @State var isOn: Bool = true
    //var lineWidth: CGFloat { frameSize! / 2 }
    var strokeColor: Color {
        Color.clear
    }
    var body: some View {
        GeometryReader { geometry in
        
            ZStack{
                SettingsButton(showModal: $showModal)
                .position(x: geometry.size.width * 0.92, y: geometry.size.width * 0.03)
                .font(Font.system(size: 10 + geometry.size.width * 0.03))
                .ignoresSafeArea()
                .padding(.top, 10)
                
                TitleView(width: geometry.size.width, height: geometry.size.height)
            
                ZStack {
                    ZStack {
                        // the light red shadow
                        Circle()
                            .stroke(strokeColor, lineWidth: geometry.size.width / 3.5)
                            .opacity(0.3)
                        // the white progress circle
                        Circle()
                            .trim(from: 0.0, to: progress / 120)
                            .stroke(
                                Color.red.opacity(0.2),
                                style: StrokeStyle(lineWidth: geometry.size.width / 2, lineCap: .butt)
                            )
                            
                            .rotationEffect(.degrees(-90))
                        
                        ZStack {
                            Circle()
                                .stroke(Color.red, lineWidth: geometry.size.width / 32)
                                .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                                .opacity(0.4)
                            Circle()
                                .trim(from: 0.0, to: progress / 120)
                                .stroke(
                                    Color.blue,
                                    style: StrokeStyle(lineWidth: geometry.size.width / 32, lineCap: .round)
                                )
                                .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                                .rotationEffect(.degrees(-90))
                            Text("1")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding()
                                .background(Circle())
                                .foregroundColor(.blue)
                                .frame(width: geometry.size.width / 4  , height: geometry.size.width / 4)
                                
                        }.offset(y: -(geometry.size.width / 3 ))
                        
                        Circle()
                            .stroke(Color.red, lineWidth: geometry.size.width / 32)
                            .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                            .opacity(0.4)
                            .offset(y: -(geometry.size.width / 3 ))
                            .rotationEffect(Angle.degrees(72))
                        Circle()
                            .stroke(Color.red, lineWidth: geometry.size.width / 32)
                            .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                            .opacity(0.4)
                            .offset(y: -(geometry.size.width / 3 ))
                            .rotationEffect(Angle.degrees(144))
                        Circle()
                            .stroke(Color.red, lineWidth: geometry.size.width / 32)
                            .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                            .opacity(0.4)
                            .offset(y: -(geometry.size.width / 3 ))
                            .rotationEffect(Angle.degrees(216))
                        Circle()
                            .stroke(Color.red, lineWidth: geometry.size.width / 32)
                            .frame(width: geometry.size.width / 4  , height: geometry.size.width / 2)
                            .opacity(0.4)
                            .offset(y: -(geometry.size.width / 3 ))
                            .rotationEffect(Angle.degrees(288))
                        // the rounded start
        //                Circle()
        //                    .border(Color.clear, width: 0)
        //                    .frame(width: lineWidth  , height: lineWidth)
        //                    .foregroundColor(progress != 0 ? .white : Color.clear  )
        //                    .offset(y: -(frameSize! / 2 )   )
        //                Circle()
        //                    .border(Color.clear, width: 0)
        //                    .frame(width: lineWidth, height: lineWidth)
        //                    .offset(y: -frameSize! / 2 )
        //                    .foregroundColor(progress / meditationTime  >= 0.97 ? Color.white : Color.clear)
        //                    .rotationEffect(Angle.degrees(360 * Double(progress / 120)))
        //                    .shadow(color: progress / meditationTime >= 0.97 ? Color.black.opacity(0.2): Color.clear, radius: frameSize! / 250 , x: frameSize! / 250, y: 0)
                        
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
