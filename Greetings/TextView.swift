import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    
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
