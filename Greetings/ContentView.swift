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
            
            Text("Hello there!")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(Color.green.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(
                    color: .green,
                    radius: 5.0,
                    x: 10.0,
                    y: 10.0
                )
            
            Text("Welcome to the Swift Programming")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(
                    color: .gray,
                    radius: 5.0,
                    x: 10.0,
                    y: 10.0
                )
            
            Text("Are you ready to,")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(Color.yellow.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(
                    color: .yellow,
                    radius: 5.0,
                    x: 10.0,
                    y: 10.0
                )
            
            Text("start exploring?")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(Color.red.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(
                    color: .red,
                    radius: 5.0,
                    x: 10.0,
                    y: 10.0
                )
            
            Text("Boom.")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(Color.purple.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(
                    color: .purple,
                    radius: 5.0,
                    x: 10.0,
                    y: 10.0
                )
        }
    }
}

#Preview {
    ContentView()
}
