import SwiftUI

struct TitleView: View {
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
    
    @State private var subtitle: String = "Exploring iOS Programming"
    let subtitles = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
        
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                // Change subtitle
                subtitle = subtitles.randomElement() ?? "Exploring iOS Programming"
                
            }
            
            Spacer()
            
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
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
