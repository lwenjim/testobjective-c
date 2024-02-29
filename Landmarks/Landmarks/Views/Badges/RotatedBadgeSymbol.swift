//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/28.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle:Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
