//
//  FlipCardView2.swift
//  Thati
//
//  Created by Reema Alfaleh on 02/04/1445 AH.
//


import SwiftUI

struct FlipCardView2: View {
    @State private var isFlipped = false

    var body: some View {
        VStack {
                    if isFlipped {
                        BackCardView2()
                            .transition(.scale)
                    } else {
                        FrontCardView2()
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

struct FrontCardView2: View {
    var body: some View {
        Image ("Well done rewared")
            .resizable()
            .frame(width: 200,height: 200)
            .shadow(radius: 5)
    }// end body
}// end view

struct BackCardView2: View {
    var body: some View {
        ZStack{
           // Image("BKG2").blur(radius: 8.0) //Background image
            Image ("Back Well done")
                .resizable()
                .frame(width: 200,height: 200)
                .shadow(radius: 5)
            VStack{
                Text ("Unlockd 18 Oct:")
                 
                Text("You completed 3 ")
                    
                Text("scenarios in  ")
                  
                Text("a week ")
                   
            } .fontWeight(.medium)
                .foregroundColor(Color.black)
               
                
        }//end Zstack
    }
}

#Preview {
    FlipCardView2()
}
