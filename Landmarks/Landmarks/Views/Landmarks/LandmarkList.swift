//
//  LandmarkList.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/28.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }                
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("abc")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
