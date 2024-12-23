//
//  ContentView.swift
//  DesktopPet
//
//  Created by Bright Xu on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var moveRight = true
    
    var body: some View {
        GeometryReader { geometry in
            Image("cat1")
                .resizable()
                .scaledToFit() // Maintain aspect ratio
                .frame(height: geometry.size.height) // Fit height to the window
                .clipped() // Ensure no overflow
                .background(Color.clear) // Transparent background
                .offset(x: moveRight ? geometry.size.width - geometry.size.height : 0) // Moves left and right
                .animation(
                    .linear(duration: 3).repeatForever(autoreverses: true),
                    value: moveRight
                ) // Smooth animation with repeating motion
                .onAppear {
                    moveRight.toggle() // Start the movement
                }
        }
    }
}

#Preview {
    ContentView()
}
