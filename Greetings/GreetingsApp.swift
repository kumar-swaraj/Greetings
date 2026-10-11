//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Kumar Swaraj on 27/09/26.
//

import SwiftUI

@main
struct GreetingsApp: App {
    var body: some Scene {
        @State var language: String = "en"
        @State var languageDirection: String = LEFT_TO_RIGHT
        
        
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
        }
    }
}
