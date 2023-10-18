//
//  NavBar.swift
//  Thati
//
//  Created by Reema Alfaleh on 03/04/1445 AH.
//

import SwiftUI

struct NavBar: View {
    @State var name: String = ""
    var body: some View {
        
            TextField("Name", text: $name)
                .padding(.all, 20)
                .foregroundColor(Color.gray)
                .background(Color.white)
                .cornerRadius(15.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 15.0)
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(Color("lavender"))
                       
                )
                .frame(width: 445.0, height: 61.0)
                .padding(-40)
                
    }
}

#Preview {
    NavBar()
}
