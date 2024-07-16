import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap me") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(20)
        .background(.brown)
        .foregroundColor(.white)
        .clipShape(.capsule)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0, y: 0, z: 1)
        )
    }
}

#Preview {
    ContentView()
}
