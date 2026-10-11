//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 10/10/26.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Chinese") {
                    language = "zh-Hans"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hindi") {
                    language = "hi"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Spanish") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
