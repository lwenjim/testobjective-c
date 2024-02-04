//
//  helloworld2App.swift
//  helloworld2
//
//  Created by liuwenjin on 2024/1/28.
//
//

import SwiftUI

@main
struct helloworld2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
