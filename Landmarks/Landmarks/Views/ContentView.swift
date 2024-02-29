//
//  ContentView.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/27.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label("Feature", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List",systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
