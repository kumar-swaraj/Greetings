//
//  ContentView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 27/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(
                text: "Hello there!",
                color: .green
            )
            TextView(
                text: "Welcome to Swift Programming",
                color: .gray
            )
            TextView(
                text: "Are you ready to,",
                color: .yellow
            )
            TextView(
                text: "start exploring?",
                color: .red
            )
            TextView(
                text: "Boom.",
                color: .purple
            )
        }
    }
}

#Preview {
    ContentView()
}
