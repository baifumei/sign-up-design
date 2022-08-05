//
//  ContentView.swift
//  Sign up design
//
//  Created by Екатерина К on 05.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        GeometryReader { _ in
            VStack() {
                Image("logo")
                    .resizable()
                    .frame(width: 130, height: 140)
                    .padding(.bottom, 5)
                
                ZStack {
                    SignUp(index: self.$index)
                        .zIndex(Double(self.index))
                    SignIn(index: self.$index)
                }
                
                HStack(spacing: 15) {
                    Rectangle()
                        .fill(Color("Color3"))
                        .frame(height: 2)
                    
                    Text("OR")
                        .font(.subheadline)
                    
                    Rectangle()
                        .fill(Color("Color3"))
                        .frame(height: 2)
                }.padding(.horizontal, 20).padding(.top)
                
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
            }.padding(.bottom)
            }
            .padding(.vertical)
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
    @State var email = ""
    @State var password = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Sign in")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.5))
                        
                        Capsule()
                            .fill(self.index == 0 ? Color("Color3") : Color.clear)
                            .frame(width: 100, height: 4)
                    }
                    
                    Spacer()
                    
                }.padding(.top, 25)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                        TextField("Enter your login", text: self.$email)
                    }
                    
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
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
            .padding()
            .padding(.bottom, 65)
            .background(Color("Color2"))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: Color.white.opacity(0.6), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
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
            .opacity(self.index == 0 ? 1 : 0)
        }
    }
}

struct SignUp: View {
    @State var email = ""
    @State var password = ""
    @State var repass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 10) {
                        Text("Sign up")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.5))
                        
                        Capsule()
                            .fill(self.index == 1 ? Color("Color3") : Color.clear)
                            .frame(width: 100, height: 4)
                    }
                    
                }.padding(.top, 25)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                        TextField("Enter your email", text: self.$email)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                        SecureField("Create your password", text: $password)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                        SecureField("Re-enter your password", text: $repass)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color("Color3"))
                }.padding(.horizontal).padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("Color1"))
            .clipShape(CShape2())
            .contentShape(CShape2())
            .shadow(color: Color.white.opacity(0.6), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button(action: {
                //
            }) {
                Text("SIGN UP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 30)
                    .background(Color("Color3"))
                    .clipShape(Capsule())
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
            }
            .offset(y: 18)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
