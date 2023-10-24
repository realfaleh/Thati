//
//  who'sLearningView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI

struct who_sLearningView: View {
    var body: some View {
        
        
        ZStack {
            Image("BKG2")
            VStack() {
                Text("who's learning?")
                    .fontWeight(.bold)
                    .padding(.bottom,150)
              
            
                HStack(spacing:100){
                    
                    VStack{
                        Button(action: {
                            
                            print("Button action")
                        }) {
                            ZStack{
                                
                                Circle()
                                    .fill(Color("lavender"))
                                    .frame(width: 200, height: 200)
                                Image("Noura's account")
                                    .resizable()
                                    .frame(width: 150, height: 150
                                    )
                                
                            }// end zstack
                        }// end button
                       
                        Text("Noura")
                    }
                    VStack{
                        Button(action: {
                            
                            print("Button action")
                        }) {
                            Circle()
                                .fill(Color("lavender"))
                                .frame(width: 200, height: 200)
                                .overlay(Image(systemName: "plus")
                                    .foregroundColor(Color.white))
                        }//end button
                    Text("Add")
                    }.padding()
            }.padding(.bottom,150)
                
            }
            .padding()
            
            .font(.system(size: 50))
        }
       
    }
}

#Preview {
    who_sLearningView()
}


