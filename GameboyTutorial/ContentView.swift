//
//  ContentView.swift
//  GameboyTutorial
//
//  Created by Logan Koshenka on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var currentBackgroundColor = Color("highlightGreen")
    private var backgroundColors = [Color("highlightGreen"), .red, .indigo, .cyan, .gray, .blue, .mint, .green, .orange]
    var body: some View {
        ZStack {
            currentBackgroundColor
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(.black.opacity(0.9))
                        .frame(width: 350, height: 350)
                    
                    VStack {
                        Spacer()
                        HStack {
                            VStack {
                                HStack(spacing: 2) {
                                    Circle()
                                        .frame(width: 8, height: 8)
                                        .foregroundColor(.white.opacity(0.25))
                                    Image(systemName: "wave.3.right")
                                        .foregroundColor(.white.opacity(0.25))
                                        .frame(width: 20)
                                }
                                Text("POWER")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white.opacity(0.5))
                                    .padding(.leading, 5)
                            }
                            Spacer()
                        }
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 8) {
                            Text("GAME BOY")
                                .font(.custom("Futura Medium Italic", size: 20))
                                .foregroundColor(.white.opacity(0.7))
                            Image("colorLogo")
                                .resizable()
                                .frame(width: 70, height: 25)
                        }
                        .padding(.bottom)
                    }
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .foregroundColor(.white.opacity(0.5))
                        .frame(width: 240, height: 230)
                    Text("HELLO :)")
                        .font(.custom("Retro Gaming", size: 20))
                        .foregroundColor(.black.opacity(0.75))
                }
                .frame(width: 350, height: 350)
                
                
                
                Text("Nintendo")
                    .font(.custom("Retro Gaming", size: 12))
                    .foregroundColor(.black.opacity(0.3))
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color.black.opacity(0.25), lineWidth: 0.5)
                            .foregroundColor(.clear)
                            .frame(width: 120, height: 30)
                    )
                    .padding()
                
                HStack {
                    Image(systemName: "circle.grid.cross.fill")
                        .font(.system(size: 100))
                        .padding(.leading, 20)
                        .foregroundColor(.black.opacity(0.8))
                    Spacer()
                    
                    Text("B")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.5))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .offset(x: -30, y: 30)
                    
                    Text("A")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.5))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .padding(.trailing, 40)
                        .onTapGesture {
                            if let random = backgroundColors.randomElement() {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    currentBackgroundColor = random
                                }
                            }
                        }
                        
                }
                
                HStack {
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        Text("SELECT")
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        Text("START")
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                }
                .padding(.top, 50)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
