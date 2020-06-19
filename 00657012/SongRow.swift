//
//  SongRow.swift
//  00657012
//
//  Created by User23 on 2020/6/16.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct SongRow: View {
    var song: Song
    
    var body: some View {
        
        HStack {
            
            NetworkImage(url: song.artworkUrl100)
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(song.trackName)
                    .bold()
                Text(song.artistName)
                Text(song.collectionName ?? "")
            }
        }
    }
    
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song: Song(artistName: "", trackName: "", previewUrl: URL(string: "https://cdn2.thecatapi.com/images/6ph.jpg")!, artworkUrl100: URL(string: "https://cdn2.thecatapi.com/images/6ph.jpg")!, trackPrice: 1, collectionName: "aa"))
    }
}


