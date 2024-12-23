//
//  AppDelegate.swift
//  DesktopPet
//
//  Created by Bright Xu on 12/23/24.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Get the screen's full frame and visible frame (excluding dock/menu bar)
        guard let screen = NSScreen.main else { return }
        let screenFrame = screen.frame
        let visibleFrame = screen.visibleFrame

        // Calculate the window's frame
        let windowHeight = screenFrame.height - visibleFrame.height // Height of the dock
        let windowFrame = NSRect(
            x: 0,                           // Start at the far left
            y: 0,                           // Align to the bottom of the screen
            width: screenFrame.width,       // Full screen width
            height: windowHeight            // Height of the dock
        )

        // Create a borderless, transparent window
        window = NSWindow(
            contentRect: windowFrame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )
        window.isOpaque = false
        // this is to make background clear. making it not clear for dev
//        window.backgroundColor = .clear
        window.level = .floating          // Always on top
        window.ignoresMouseEvents = true  // Non-interactive
        window.makeKeyAndOrderFront(nil)

        // Set the SwiftUI content view
        let contentView = ContentView()
        window.contentView = NSHostingView(rootView: contentView)
    }
}
