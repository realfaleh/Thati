//
//  who'sLearningView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI

struct who_sLearningView: View {
    var body: some View {
        
        VStack{
            Text("who's learning?")
            .padding(50)
        
        HStack(spacing:40){
            Circle()
                .fill(Color("lavender"))
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(Color("lavender"))
                .frame(width: 200, height: 200)

            
        }
            HStack(spacing:150) {
                Text("Noura")
                    
                Text("Add")
            }
            
            
        }.font(.system(size: 50))
       
    }
}

#Preview {
    who_sLearningView()
}

//Image(systemName: "plus")
