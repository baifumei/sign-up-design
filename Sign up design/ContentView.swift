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
                            .frame(width: 120, height: 120)
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
                        HStack(spacing: 20) {
                            Button(action: {
                                //
                            }) {
                            Image("AppleLogo")
                                .resizable()
                                .frame(width: 40, height: 50)
                                .offset(y: -3)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("FacebookLogo")
                                .resizable()
                                .frame(width: 50, height: 50)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("TwitterLogo")
                                .resizable()
                                .frame(width: 50, height: 40)
                                .offset(y: 3)
                            }
                            Button(action: {
                                //
                            }) {
                            Image("VKLogo")
                                .resizable()
                                .frame(width: 50, height: 50)
                            }
                        }
                    }.padding(.bottom)
                }
            }
        }.background(Color("Color4"))
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
