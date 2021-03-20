//
//  MenuTabView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct MenuTabView: View {
    var body: some View {
        TabView {
            //tab menu 1
            HomeList()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
            }.tag(1)
            //tab menu 2
            ChatView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.square.fill")
                        Text("Chat")
                    }
            }.tag(2)
            //tab menu 3
            StoriesView()
                .tabItem {
                    VStack {
                        Image(systemName: "play.fill")
                        Text("Stories")
                    }
            }.tag(3)
        }
    }
}

struct MenuTabView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTabView()
    }
}
