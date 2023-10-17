import Foundation

/// Castles game logic
class Game {
    private var _castles = [Castle]()
    private var _roads = [Road]()

    var castles: [Castle] {
        return _castles
    }
    var roads: [Road] {
        return _roads
    }

    let timer: Castles.Timer

    init(timer: Castles.Timer) {
        self.timer = timer

        timer.run()
    }

    func addValue(to castle: Castle) {

    }

    func castleExist(castle: Castle) -> Bool {
        return _castles.contains(castle)
    }

    func connectCastle(castleA: Castle, castleB: Castle) {
        if castleExist(castle: castleA) && castleExist(castle: castleB) {
            let road = Road(fromCastle: castleA, toCastle: castleB)
            self._roads.append(road)
        }
    }

    func add(castle: Castle) {
        self._castles.append(castle)
    }

    func deleteRoad(road: Road) {
        _roads.removeAll(where: { $0 == road })
    }
}
