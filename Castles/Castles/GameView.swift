import SwiftUI
import SpriteKit

struct GameView: View {
    var scene: SKScene

    var body: some View {
        SpriteView(scene: scene)
    }
}

#Preview {
    GameView(scene: SKScene(fileNamed: "Level.sks")!)
}
