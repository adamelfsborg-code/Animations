import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let unitPoint: UnitPoint
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: unitPoint).clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, unitPoint: .topLeading), identity: CornerRotateModifier(amount: 0, unitPoint: .topLeading))
    }
}

struct ContentView: View {
    @State private var isShowingRed = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}
#Preview {
    ContentView()
}
