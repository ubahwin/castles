import SwiftUI
import SpriteKit

struct MenuView: View {

    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                GameView(scene: SKScene(fileNamed: "Level.sks")!)
            }, label: {
                Text("Start")
                    .padding()
                    .font(.title)
                    .buttonBorderShape(.roundedRectangle(radius: 15))
            })
        }
    }
}

#Preview {
    MenuView()
}
