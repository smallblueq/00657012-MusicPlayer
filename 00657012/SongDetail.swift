//
//  SongDetail.swift
//  00657012
//
//  Created by User23 on 2020/6/16.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI
import AVKit

struct SongDetail: View {
    var song: Song
    @State private var player: AVPlayer?
    var body: some View {
        GeometryReader { (geometry) in
            VStack {
                NetworkImage(url: self.song.artworkUrl100)
                    .scaledToFill()
                    .frame(width: geometry.size.width * 250 / 414, height: geometry.size.height * 250 / 414)
                Text(self.song.trackName)
                    .font(Font.system(size: 30))
                Text(self.song.artistName)
                Button(action: {
                    self.player = AVPlayer(url: self.song.previewUrl)
                    self.player?.play()
                }) {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 100 / 414, height: geometry.size.height * 100 / 414)
                }
            }
            .onDisappear {
                self.player?.pause()
            }
            .frame(width: geometry.size.width, height: geometry.size.height * 500 / 414 )
            .background(Color.init(red: 182/255, green: 171/255, blue: 171/255))
        }
        
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: Song(artistName: "", trackName: "love song", previewUrl: URL(string: "https://cdn2.thecatapi.com/images/6ph.jpg")!, artworkUrl100: URL(string: "https://cdn2.thecatapi.com/images/6ph.jpg")!, trackPrice: 1, collectionName: "aa"))
    }
}

