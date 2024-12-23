//
//  DesktopPetApp.swift
//  DesktopPet
//
//  Created by Bright Xu on 12/23/24.
//

import SwiftUI

@main
struct DesktopCatApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        // Remove the default window
        Settings { }
    }
    
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
}
