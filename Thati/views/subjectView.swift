//
//  subjectView.swift
//  subjectsPage
//
//  Created by Sara AlQuwaifli on 17/10/2023.
//

import SwiftUI

struct subjectView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 30) {
                    HStack {
                        Button(action: { presentationMode.wrappedValue.dismiss()}) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(Color("Button.fill"))
                            Text("Subjects")
                                .foregroundColor(Color("Button.fill"))
                        }
                        Spacer(minLength: 100)
                        
                        Text("Social Awareness")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Circle()
                                .fill(Color("Button.C"))
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Image(systemName: "square.and.arrow.up")
                                        .foregroundColor(Color("Button.fill"))
                                )
                        }
                    }
                    .padding()
                    .frame(maxHeight: 60)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    ScrollView {
                        VStack {
                            HStack(spacing: 80) {
                                VStack {
                                    Text("Social Awareness: Bullying")
                                        .font(.title)
                                        .frame(width: 500, height: 100)
                                        .padding(.trailing, 160)
                                    
                                    Text("The ability to take the perspective of and empathize with others from diverse backgrounds and cultures, to understand social and ethical norms for behavior.")
                                        .frame(width: 500, height: 100)
                                }
                                Rectangle()
                                    .fill(Color("Blue"))
                                    .shadow(radius: 10)
                                    .frame(width: 390, height: 250)
//                                    .border(.black)
                                    
                                    .overlay(
                                        Image("Social")
                                            .resizable()
                                            .frame(width: 243, height: 243)
//                                            .shadow(radius: 10)
                                    )
                                    .cornerRadius(14)
                            }
                            .padding(.trailing)
                           
                            VStack(spacing: 30) {
                                Spacer()
                                HStack(spacing: 10) {
                                    Rectangle()
                                        .fill(Color("Purple1"))
                                        .frame(width: 178, height: 91)
                                        .cornerRadius(13)
                                        .overlay(
                                            Image("Bully")
                                                .resizable()
                                                .frame(width: 122, height: 122)
                                        )
//                                        .padding(.trailing, 10)
                                    
                                    VStack {
                                        Text("Scenario 1")
                                            .font(.system(size: 25))
                                            .padding(.leading, -250)
                                        
                                        Spacer(minLength: 0.5)
                                        
                                        Text("In this scenario, Noura, a new student at a school, becomes the target of bullying by two classmates named Sarah and Alex. They start by making derogatory remarks about Noura's appearance and spreading rumors about her…")
                                            .frame(width: 500, height: 100)
                                    }
                                    .padding(.leading, 20)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.trailing, 80)
                                    
                                    Button(action: {}) {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("Button.C"))
                                            .frame(width: 100, height: 50)
                                            .overlay(
                                                HStack {
                                                    Image(systemName: "play.fill")
                                                        .foregroundColor(Color("Button.fill"))
                                                    Text("Play")
                                                        .foregroundColor(Color("Button.fill"))
                                                }
                                            )
//                                            .padding(.trailing)
                                    }
                                }
                                .frame(width: 1050, height: 170)
                                .background(Color.white)
                                .cornerRadius(26)
                                .shadow(radius: 3)
                                
                                HStack(spacing: 10) {
                                    Rectangle()
                                        .fill(Color("Purple1"))
                                        .frame(width: 178, height: 91)
                                        .cornerRadius(13)
                                        .overlay(
                                            Image("Bully2")
                                                .resizable()
                                                .frame(width: 129, height: 129)
                                        )
//                                        .padding(.trailing)
                                    
                                    VStack {
                                        Text("Scenario 2")
                                            .font(.system(size: 25))
                                            .padding(.leading, -250)
                                        
                                        Spacer(minLength: 0.5)
                                        
                                        Text("In this scenario, Sara, a 12-year-old student, faces bullying from Mrs. Johnson, a parent who holds prejudiced views about Sara's culture and religion. Mrs. Johnson makes derogatory comments, excludes Sara and her family from community events…")
                                            .frame(width: 500, height: 100)
                                    }
                                    .padding(.leading, 20)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.trailing, 80)
                                    
//                                    Spacer(minLength: 0)
                                    Button(action: {}) {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("Button.C"))
                                            .frame(width: 100, height: 50)
                                            .overlay(
                                                HStack {
                                                    Image(systemName: "play.fill")
                                                        .foregroundColor(Color("Button.fill"))
                                                    Text("Play")
                                                        .foregroundColor(Color("Button.fill"))
                                                }
//                                                    .padding(.trailing)
                                            )
                                            
                                    }
                                }
                                .frame(width: 1050, height: 170)
                                .background(Color.white)
                                .cornerRadius(26)
                                .shadow(radius: 3)
                            }
                        }
                        .padding(.bottom)
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("BKG2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
        )
        .edgesIgnoringSafeArea(.all)
    }
}
struct subjectView_Previews: PreviewProvider {
    static var previews: some View {
        subjectView()
    }
}
