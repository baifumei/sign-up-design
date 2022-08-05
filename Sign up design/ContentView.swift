//
//  ContentView.swift
//  Sign up design
//
//  Created by Екатерина К on 05.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { _ in
            ZStack {
                VStack(spacing: 15) {
                    HStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                    ZStack {
                        //
                    }
                    
                    Spacer()
                    
                    VStack {
                        HStack(spacing: 5) {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(Color("Color3"))
                            Text("OR")
                                .font(.subheadline)
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(Color("Color3"))
                        }.padding(5)
                    }
                    VStack {
                        HStack(spacing: 25) {
                            Button(action: {
                                //
                            }) {
                            Image("AppleLogo")
                                .resizable()
                                .frame(width: 35, height: 45)
                                .offset(y: -3)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("FacebookLogo")
                                .resizable()
                                .frame(width: 45, height: 45)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("TwitterLogo")
                                .resizable()
                                .frame(width: 45, height: 35)
                                .offset(y: 3)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("VKLogo")
                                .resizable()
                                .frame(width: 45, height: 45)
                            }
                        }
                    }.padding(.bottom)
                }
            }
        }.background(Color("Color4"))
    }
}




struct CShape1: Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}

struct CShape2: Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
