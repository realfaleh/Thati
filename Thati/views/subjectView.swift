//
//  subjectView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI

struct subjectView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        
        if horizontalSizeClass == .compact {
                    // Device is in landscape mode
                    return AnyView(LandscapeView())
                } else {
                    // Device is in portrait mode
                    return AnyView(Text("This app is designed for landscape mode only on iPad."))
                }
        
        struct LandscapeView: View {
            var body: some View {
                // Your landscape-only view content here
                Text("Landscape View")
                    .font(.largeTitle)
            }
        }
        
//        ZStack{
//           Image("bkg")
//            HStack{
//                VStack{
//                    Text("Social Awareness: Bullying")
//                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                    //                    .frame(width:500, height:100)
//                        .padding(.trailing, 170)
//                    Text("The ability to take the perspective of and empathize with others from diverse backgrounds and cultures, to understand social and ethical norms for behavior.")
//                        .frame(width:500, height:100)
//                }
//            Color.blue
//                .frame(width:400, height:250)
//                Image("")
//                    .resizable()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
//                
//            }
//        }
//        
//        VStack{
//            Text("Scenario 1")
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            Text("In this scenario, Noura, a new student at a school, becomes the target of bullying by two classmates named Sarah and Alex. They start by making derogatory remarks about Noura's appearance and spreading rumors about her…")
//                .frame(width:500, height:100)
//            
//            
//        }.frame(width:980, height: 170)
//        
//        VStack{
//            
//        }
    }
}

#Preview {
    subjectView()
}
