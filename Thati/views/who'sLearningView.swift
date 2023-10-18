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
            Image("bg")
            VStack() {
                Text("who's learning?")
                    .padding(.bottom,150)
              
            
                HStack(spacing:40){
                    
                    VStack{
                        Circle()
                            .fill(Color("lavender"))
                            .frame(width: 200, height: 200)
                        
                        Text("Noura")
                    }
                    VStack{
                    Circle()
                        .fill(Color("lavender"))
                        .frame(width: 200, height: 200)
                        .overlay(Image(systemName: "plus")
                            .foregroundColor(Color.white))
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


