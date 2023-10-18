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
        
        VStack(spacing:0){
            HStack{
                Button(action:{}){
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color("Button.fill"))
                    Text("Subjects")
                        .foregroundColor(Color("Button.fill"))
                }
                Spacer()
                
                Text("Social Awareness")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                Spacer()
                Button(action:{}){
                    Circle()
                        .fill(Color("Button.C"))
                        .frame(width:40, height:40)
                        .overlay(
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(Color("Button.fill"))
                        )
                }
            }.padding()
                .frame(maxHeight:60)
                .background(Color.white)
                .shadow(color:Color.black.opacity(0.1), radius:2, x:0, y:2)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            
            ZStack{
                Image("bg")
                
                HStack{
                    VStack {
                        
                        HStack{
                            VStack{
                                
                                Text("Social Awareness: Bullying")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .frame(width:500, height:100)
                                    .padding(.trailing, 170)
                                Text("The ability to take the perspective of and empathize with others from diverse backgrounds and cultures, to understand social and ethical norms for behavior.")
                                    .frame(width:500, height:100)
                            }
                            Rectangle()
                                .fill(Color("lightblue"))
                                .frame(width: 390, height: 250)
                                .overlay(Image("sbv")
                                    .resizable()
                                    .frame(width: 243,height: 243))
                                .cornerRadius(14)
                            
                        }.padding()
                        
                        
                        
                        VStack {
                            HStack{
                                Spacer(minLength: 20)
                                Rectangle()
                                    .fill(Color("Purple1"))
                                    .frame(width:178, height:91)
                                    .cornerRadius(13)
                                    .overlay(Image("s1")
                                        .resizable()
                                        .frame(width:122, height:122))
                                
                                VStack{
                                    Text("Scenario 1")
                                        .font(.system(size:25))
                                        .position()
                                        .padding(.trailing)
                                    
                                    Spacer(minLength: -20)
                                    
                                    Text("In this scenario, Noura, a new student at a school, becomes the target of bullying by two classmates named Sarah and Alex. They start by making derogatory remarks about Noura's appearance and spreading rumors about her…")
                                        .frame(width:500, height:100)
                                }
                                .padding(.leading)
                                
                                .fixedSize(horizontal: false, vertical: true)
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Button.C"))
                                    .frame(width:100, height:50)
                                    .overlay(
                                        HStack{
                                            Image(systemName: "play.fill")
                                                .foregroundColor(Color("Button.fill"))
                                            Text("Play")
                                        }
                                    )
                                
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                                
                            }.frame(width:978, height: 170)
                                .background(.white)
                                .cornerRadius(26)
                                .shadow(radius: 5)
                            
                            
                            HStack {
                                Spacer(minLength: 20)
                                Rectangle()
                                    .fill(Color("Purple1"))
                                    .frame(width:178, height:91)
                                    .cornerRadius(13)
                                    .overlay(Image("s2")
                                        .resizable()
                                        .frame(width:129, height:129))
                                
                                VStack{
                                    Text("Scenario 2")
                                        .font(.system(size:25))
                                        .position()
                                        .padding(.trailing)
                                    
                                    Spacer(minLength: -20)
                                    
                                    Text("In this scenario, Noura, a new student at a school, becomes the target of bullying by two classmates named Sarah and Alex. They start by making derogatory remarks about Noura's appearance and spreading rumors about her…")
                                        .frame(width:500, height:100)
                                    
                                    
                                } .padding(.leading)
                                
                                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Button.C"))
                                    .frame(width:100, height:50)
                                    .overlay(
                                        HStack{
                                            Image(systemName: "play.fill")
                                                .foregroundColor(Color("Button.fill"))
                                            Text("Play")
                                        }
                                    )
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                            }
                            .frame(width:980, height: 170)
                            .background(.white)
                            .cornerRadius(26)
                            .shadow(radius: 5)
                        }
                    }
                    }
                    
                }
            
        }
       
       
        }
    

#Preview {
    subjectView()
}
