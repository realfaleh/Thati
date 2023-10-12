//
//  demoView.swift
//  Thati
//
//  Created by JAY on 12/10/2023.
//

import SwiftUI
import AVKit

struct demoView: View {
    
    @State private var player = AVPlayer()
    var body: some View {
        
        ZStack{
            
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource:"thatilogo", withExtension: "mp4")!))
        }
        .ignoresSafeArea()
       
    }
}

#Preview {
    demoView()
}
