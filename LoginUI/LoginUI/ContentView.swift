//
//  ContentView.swift
//  LoginUI
//
//  Created by Ian Solomein on 15.08.2020.
//  Copyright © 2020 Ian Solomein. All rights reserved.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        
        SignIn()
    }
}

struct SignIn : View {
    
    @State var user = ""
    @State var pass = ""
    
    var body : some View{
        VStack {
             Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
            VStack{
                
                VStack(alignment: .leading){
                    
                    VStack(alignment: .leading){
                        
                        Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                        HStack{
                            
                            TextField("Enter Your Username", text: $user)
                            
                            if user != ""{
                                
                                Image("check").foregroundColor(Color.init(.label))
                            }
                            
                        }
                        
                        Divider()
                        
                    }.padding(.bottom, 15)
                    
                    VStack(alignment: .leading){
                        
                        Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                        SecureField("Enter Your Password", text: $pass)
                        
                        Divider()
                    }
                      
                }.padding(.horizontal, 6)
             
            }.padding()
            VStack{
                
                Button(action: {
                    
                }) {
                    
                    Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                    
                    
                }.background(Color("color"))
                    .clipShape(Capsule())
                    .padding(.top, 45)
                
                Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,30)
                
                
                
                HStack(spacing: 8){
                    
                    Text("Don't Have An Account ?").foregroundColor(Color.gray.opacity(0.5))
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Sign Up")
                        
                    }.foregroundColor(.blue)
                    
                }.padding(.top, 25)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
