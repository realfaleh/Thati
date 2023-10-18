//
//  demoView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI
import AVKit


struct demoView: View {
    
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "That", withExtension: "mp4")!)
    var body: some View {
        
        VStack{
            
            VideoPlayer(player: player)
                          
        }.onAppear {
            player.play()
    }
        .edgesIgnoringSafeArea(.all)
       
    }
    
    
    
}

#Preview {
    demoView()
}
