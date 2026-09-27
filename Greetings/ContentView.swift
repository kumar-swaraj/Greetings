//
//  ContentView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 27/09/26.
//

import SwiftUI

struct ContentView: View {
    let messages: [DataItemModel] = [
        DataItemModel(
            text: "Hello there!",
            color: .green
        ),.init(
            text: "Welcome to the Swift Programming",
            color: .gray
        ), .init(
            text:  "Are you ready to,",
            color: .yellow
        ), .init(
            text: "Start exploring?",
            color: .red
        ), .init(
            text: "Boom.",
            color: .purple
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    ContentView()
}
