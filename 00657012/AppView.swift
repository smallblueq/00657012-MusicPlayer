//
//  AppView.swift
//  00657012
//
//  Created by User23 on 2020/6/16.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            MusicList().tabItem{
                Image(systemName: "music.house.fill")
                Text("歌曲列表")
            }
        }
        .accentColor(.purple)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

