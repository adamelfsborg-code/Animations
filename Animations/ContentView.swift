import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 50 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    ContentView()
}
