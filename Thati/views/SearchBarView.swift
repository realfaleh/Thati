//
//  SearchBarView.swift
//  ThatiUITests
//
//  Created by Reema Alfaleh on 02/04/1445 AH.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        GeometryReader { geometry in
           // ZStack(alignment: .center) { // Align the content to the center
//                //Image("BKG2")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .edgesIgnoringSafeArea(.all)
//                
                VStack {
                    SearchBar(searchText: $searchText, searching: $searching)
                       // .padding(.horizontal)
                    
                   // Spacer() // Push the search bar to the top
                }
               // .padding(.leading, -80.0)
                .frame(width: geometry.size.width, height: geometry.size.height)
                
            //}
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(.systemGray5))
            
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                }
                onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.horizontal, 13)
            
        }
        .frame(height: 35)
        .frame(width: 1067)
        .cornerRadius(13)
       // .padding(.leading, -190.0)
        
    }
}



//                VStack(spacing: -210)
//                {
//                    ZStack {
//                        Circle()
//                            .fill(Color("lavender"))
//                            .frame(width: 128.65, height: 122.0)
//
//                        Image("Noura's account")
//                            .resizable()
//                            .frame(width: 100.0, height: 100.0)
//                    } //end zstack
//                    .padding(.leading)
//                    .padding(.top)
//                    .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height * 0.7) // Set the frame to the screen size
//
//                    Text("Edit")
//                        .foregroundColor(Color.gray)
//                        .multilineTextAlignment(.center)
//                        .padding()
//                }// end Vstack
//                .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height)
//                .offset(y: geometry.size.height * 0.15) // Adjust the vertical offset to center the text with the image
//                VStack{
//                    HStack{
//                        Text("Name")
//                            .font(.title)
//                        //RoundedRectangle(cornerRadius: 25.0)
//                            .frame(width: 380.0, height: 56.0)
//                            .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(30)
//
//
//
//                    }
//                }//end vstack
//                VStack {
//                    HStack{
//                        Text("Name")
//                        RoundedRectangle(cornerRadius: 25.0)
//                            .frame(width: 400.0, height: 40.0)
//
//
//                    }
//                }

