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
            VStack() {
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                ZStack {
                    SignIn(index: 0)
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

struct SignIn: View {
    @State var index: Int
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack(spacing: 5) {
                        Text("Sign in")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.index == 0 ? .white : .gray)
                        
                        Capsule()
                            .fill(self.index == 0 ? Color("Color3") : Color.clear)
                            .frame(width: 100, height: 4)
                    }
                    
                    Spacer()
                }.padding(.top, 25)
                
                VStack {
                    HStack {
                        Image(systemName: "envelope.fill")
                        TextField("Enter your login", text: self.$email)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 40)
                
                VStack {
                    HStack {
                        Image(systemName: "eye.slash.fill")
                        SecureField("Enter your password", text: $password)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 30)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        //
                    }) {
                        Text("Forget password?")
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                }.padding(.horizontal).padding(.top, 30)
            }
            .padding().padding(.bottom, 65)
            .background(Color("Color2"))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: Color.white.opacity(0.6), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal)
            
            Button(action: {
                //
            }) {
                Text("SIGN IN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 30)
                    .background(Color("Color3"))
                    .clipShape(Capsule())
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
            }
            .offset(y: 180)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
