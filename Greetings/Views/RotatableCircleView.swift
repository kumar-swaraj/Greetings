//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Kumar Swaraj on 29/09/26.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360.0)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(
                colors: [
                    .pink,
                    .purple,
                    .blue,
                    .orange,
                    .yellow,
                    .pink
                ]
            ),
            center: .center,
            angle: .zero
        )
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
