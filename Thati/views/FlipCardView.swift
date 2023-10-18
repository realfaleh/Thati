//
//  FlipCardView.swift
//  Thati
//
//  Created by Reema Alfaleh on 30/03/1445 AH.
//

import SwiftUI

struct FlipCardView: View {
    @State private var isFlipped = false

    var body: some View {
        VStack {
                    if isFlipped {
                        BackCardView()
                            .transition(.scale)
                    } else {
                        FrontCardView()
                            .transition(.scale)
                    }
                }
                .padding()
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        isFlipped.toggle()
                    }
                }
    }// end body
}// end view

struct FrontCardView: View {
    var body: some View {
        Image ("Winner reward")
            .resizable()
            .frame(width: 200,height: 200)
            .shadow(radius: 5)
    }// end body
}// end view

struct BackCardView: View {
    var body: some View {
        ZStack{
           // Image("BKG2").blur(radius: 8.0) //Background image
            Image ("Back Winner reward")
                .resizable()
                .frame(width: 200,height: 200)
                .shadow(radius: 5)
            VStack{
                Text ("Unlock when:  ")
                 
                Text("Choosen all the right ")
                    
                Text("decisions in a ")
                  
                Text("scenario “..”")
                   
            } .fontWeight(.medium)
                .foregroundColor(Color.black)
               
                
        }//end Zstack
    }
}

#Preview {
    FlipCardView()
}
