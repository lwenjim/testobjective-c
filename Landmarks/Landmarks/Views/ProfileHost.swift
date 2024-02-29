//
//  ProfileHost.swift
//  Landmarks
//
//  Created by liuwenjin on 2024/2/29.
//

import SwiftUI


struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            HStack(content: {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            })
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            }else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear{
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        })
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
