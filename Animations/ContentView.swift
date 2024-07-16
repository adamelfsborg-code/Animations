import SwiftUI

struct ContentView: View {
    @State private var isShowing = true
    
    var body: some View {
        Button("Tap me") {
            withAnimation {
                isShowing.toggle()
            }
        }
        
        if isShowing {
            Rectangle()
                .fill(.green)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
        }
       
    }
}
#Preview {
    ContentView()
}
