//
//  HikeBadge.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/29.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
            
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
