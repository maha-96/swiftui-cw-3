//
//  ContentView.swift
//  ex2 class2
//
//  Created by bibi on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var d = ""
    //var uss = 0.0
   // var ukk = 0.0
   // var euu = 0.0
    
    var body: some View {
        ZStack {
            VStack{
            Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                   // Text("استبدل هذا ب Text Field")
                    Text(d)
                    
                    TextField("العملة بالدينار" , text: $d)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    
                        
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                    VStack(spacing: 30){
                        HStack(spacing: 40){
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let uss = (Double(d) ?? 0 ) * 3.28
                            
                            Text("\(uss)")
                            
                           
                            
                        }
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let ukk = (Double(d) ?? 0 ) * 2.46
                            
                            Text("\(ukk)")
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let euu = ( Double(d) ?? 0 ) * 2.7
                            
                            Text("\(euu)")
                            
                        }
                    }.padding(.top, 50)
                    Spacer()
                
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



