import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .purple,
        .pink,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0),
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(
                color: color,
                radius: 5.0,
                x: 10.0,
                y: 10.0
            )
            .onTapGesture {
                // Randomly change color
                withAnimation {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus", color: .orange)
        TextView(text: "Peace", color: .red)
        TextView(text: "Strange", color: .blue)
    }
}
