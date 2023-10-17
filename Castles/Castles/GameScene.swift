import Foundation
import SpriteKit
import CastlesGame

class GameScene: SKScene {
    let game = Game(timer: SimpleTimer())

    override func didMove(to view: SKView) { }

    func addCastle(location: NSPoint) {
        let castle = SKSpriteNode(imageNamed: "castle")

        castle.zPosition = 100
        castle.position = location
        castle.setScale(1)

        self.addChild(castle)
    }
}

#if os(macOS)
extension GameScene {
    override func mouseDown(with event: NSEvent) {
        let location = event.location(in: self)
        addCastle(location: location)
    }
}
#endif
