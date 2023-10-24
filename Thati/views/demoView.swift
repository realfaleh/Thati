//
//  demoView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI
import AVKit


struct demoView: View {
    @State private var isPressed = false
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "That", withExtension: "mp4")!)
        var body: some View {
            
            VStack{
                
                
                VideoPlayer(player: player)
                    .disabled(true)
                   
            }
            .onAppear {
                player.play()
        }
            .edgesIgnoringSafeArea(.all)
           
        }
    
    
    
}

#Preview {
    demoView()
}
