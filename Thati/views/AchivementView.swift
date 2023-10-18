//
//  AchivementView.swift
//  Thati
//
//  Created by Reema Alfaleh on 30/03/1445 AH.
//

import SwiftUI

struct AchivementView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
         
                VStack(alignment: .center){
                 
                    VStack(spacing: 30){
                        HStack {
                            Button(action: { presentationMode.wrappedValue.dismiss()}) {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(Color("Button.fill"))
                                Text("Home")
                                    .foregroundColor(Color("Button.fill"))
                            }
                            Spacer(minLength: 100)
                            
                            Text(" Achivements      ")
                                .foregroundColor(.black)
                                .font(.system(size: 25))
                            
                            Spacer()
                        
                        }// end hstack
                        .padding()
                        .frame(maxHeight: 60)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
                        .fixedSize(horizontal: false, vertical: true)
                        
                        Text ("Achieved")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 900.0)
                        
                        HStack(alignment: .center){
                            FlipCardView2()
                            Image("Star reward")
                                .resizable()
                                .frame(width: 180,height: 180)
                                .shadow(radius: 5)
                            Image("Super work reward")
                                .resizable()
                                .frame(width: 215,height: 215)
                                .shadow(radius: 5)
                            
                        } //end Hstack
                        .padding(.trailing, 500.0)
                        
                        
                    }  //end Vstack
                    
                    
                    VStack{
                        Text ("Not Yet")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 935.0)
                        
                        HStack(alignment: .center){
//                            Spacer(minLength: 25)
                            Image("Brilliant reward")
                                .resizable()
                                .frame(width: 180,height: 180)
                                .shadow(radius: 5)
                            Image("Doing great reward")
                                .resizable()
                                .frame(width: 180,height: 180)
                                .shadow(radius: 5)
                            Image("Good job reward")
                                .resizable()
                                .frame(width: 200,height: 200)
                                .shadow(radius: 5)
                            
                            FlipCardView()
                           
                            
                            Image ("Awesome reward")
                                .resizable()
                                .frame(width: 190,height: 190)
                                .shadow(radius: 5)
                            
                            
                            
                        }//end Hstack
                        .padding(.trailing, 80)
                        
                    } //end Vstack
                    
                } //end Vstack
                .background(
                    Image("BKG2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                )
                .edgesIgnoringSafeArea(.all)

    }// end Var body
    
}// end view
struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
        }
    }
}
#Preview {
    AchivementView()
}
