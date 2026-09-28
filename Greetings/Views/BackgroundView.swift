import SwiftUI

/// A reusable background view that displays a diagonal linear gradient.
///
/// The gradient transitions between `myBlue1` and `myBlue2`,
/// starting from the top-left corner and ending at the bottom-right corner.
/// The background is rendered with 80% opacity and extends into the safe area.
struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .myBlue1,
                .myBlue2
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.8)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
