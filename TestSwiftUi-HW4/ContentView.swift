//
//  ContentView.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 11.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Feed")
                }
            LoginView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            PlayerView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Player")
                }
            VideoView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Video")
                }
            RecorderView()
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Recorder")
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
