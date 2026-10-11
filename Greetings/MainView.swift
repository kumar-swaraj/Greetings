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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait mode ?
        if isPortraitPhone || isIpad {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        } else {
            // Landscape Mode ?
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
