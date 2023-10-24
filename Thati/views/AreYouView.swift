//
//  AreYouView.swift
//  Thati
//
//  Created by Reema Alfaleh on 03/04/1445 AH.
//
import SwiftUI
import SwiftUI

struct AreYouView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("BKG2")
               
                VStack {
                    Text("Are you?")
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.bottom, 350)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .frame(width: 599.0, height: 90.0)
                    
                    HStack(spacing: 120) {
                        VStack {
                            NavigationLink(destination: parentView()) {
                                Image("Parent")
                                    .resizable()
                                    .frame(width: 200, height: 200)
                            }
                            Text("Parent")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                        }
                        
                        VStack {
                            NavigationLink(destination: ChildView()) {
                                Image("Student")
                                    .resizable()
                                    .frame(width: 200, height: 200)
                            }
                            Text("Student")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline) // Empty title for default navigation title
            
            .navigationBarItems(leading: leadingNavigationBarItems, trailing: trailingNavigationBarItems) // Add custom navigation bar items
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Ensure navigation bar is displayed correctly on iPad
        
    }
    
    // Custom leading navigation bar items
    private var leadingNavigationBarItems: some View {
        HStack {
            Spacer()
        }
    }
    
    // Custom trailing navigation bar items
    private var trailingNavigationBarItems: some View {
        HStack {
            Spacer()
        }
    }
}

struct ParentView: View {
    var body: some View {
        Text("Parent View")
    }
}

struct StudentView: View {
    var body: some View {
        Text("Student View")
    }
}

struct AreYouView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AreYouView()
                .previewDevice("iPad Air (4th generation)")
        }
    }
}
