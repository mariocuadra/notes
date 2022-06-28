//
//  notesApp.swift
//  notes WatchKit Extension
//
//  Created by DTI on 28-06-22.
//

import SwiftUI

@main
struct notesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
