//
//  ContentView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 27/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            LinearGradient(
                colors: [
                    .cyan, .blue, .white
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.purple)
                    .padding()
                    .background(Color.orange)
                    .padding()
                    .shadow(
                        color: .orange,
                        radius: 5.0,
                        x: 5.0,
                        y: 5.0
                    )
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
