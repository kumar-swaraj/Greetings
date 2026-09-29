//
//  MainView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 29/09/26.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
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
