//
//  MainView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 29/09/26.
//

import SwiftUI

// Portrait = Compact height, regular width
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        // Portrait mode ?
        if isPortraitPhone || isIpad {
            GreetingsView()
        } else {
            // Landscape Mode ?
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
