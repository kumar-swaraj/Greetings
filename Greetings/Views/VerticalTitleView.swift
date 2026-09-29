//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 29/09/26.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
            RotatableCircleView()
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
