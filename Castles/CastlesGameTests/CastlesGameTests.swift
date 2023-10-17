import XCTest
@testable import Castles

final class CastlesGameTests: XCTestCase {
    func test_emptyRoad_init() {
        let game = Game(timer: MockTimer())
        XCTAssertEqual(game.roads, [])
    }

    func test_assertBoard() {
        let game = Game(timer: MockTimer())
        let board = [
            Castle(value: 12),
            Castle(value: 10)
        ]

        for castle in board {
            game.add(castle: castle)
        }

        XCTAssertEqual(game.castles, board)
    }

    func test_addRoad() {
        let game = Game(timer: MockTimer())
        let board = [
            Castle(value: 12),
            Castle(value: 10)
        ]
        let road = Road(fromCastle: board[0], toCastle: board[1])
        for castle in board {
            game.add(castle: castle)
        }

        game.connectCastle(castleA: board[0], castleB: board[1])

        XCTAssertEqual(game.roads[0], road)
    }
    func test_addRoad_emptyCastles_error() {
        let game = Game(timer: MockTimer())
        let board = [
            Castle(value: 12),
            Castle(value: 10)
        ]
        let road = Road(fromCastle: board[0], toCastle: board[1])

        game.connectCastle(castleA: board[0], castleB: board[1])

        XCTAssertEqual(game.roads, [])
    }

    func test_deleteRoad() {
        let game = Game(timer: MockTimer())
        let board = [
            Castle(value: 12),
            Castle(value: 10)
        ]
        let road = Road(fromCastle: board[0], toCastle: board[1])
        for castle in board {
            game.add(castle: castle)
        }

        game.connectCastle(castleA: board[0], castleB: board[1])

        game.deleteRoad(road: road)

        XCTAssertEqual(game.roads, [])
    }
}

class MockTimer: Castles.Timer {
    func stop() {
    }

    func run() {
    }

    func every(action: Void) {
    }
}
