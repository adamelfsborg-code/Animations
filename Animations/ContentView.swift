import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(.bouncy), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                animationAmount += 1
            }
                .padding(20)
                .background(.brown)
                .foregroundColor(.white)
                .clipShape(.capsule)
                .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    ContentView()
}
