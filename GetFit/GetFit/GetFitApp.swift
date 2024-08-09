//
//  GetFitApp.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication,
                       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
          Thread.sleep(forTimeInterval: 3)
        FirebaseApp.configure()

        return true
      }
}

@main
struct GetFitApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @Environment(\.colorScheme) var colorScheme
    @StateObject private var progressViewModel = ProgressViewModel(userId: "abc123")
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
                .environmentObject(progressViewModel)
        }
    }
}
