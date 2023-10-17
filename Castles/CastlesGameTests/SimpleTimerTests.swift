import XCTest
@testable import Castles

final class TimerTests: XCTestCase {
    func test_secondAddAfterRun2() {
        let timer = SimpleTimer()
        let sec = 2.0

        timer.run()

        RunLoop.current.run(until: Date(timeIntervalSinceNow: sec))

        timer.stop()

        XCTAssertEqual(timer.seconds, sec)
    }

    func test_secondAddAfterRun4() {
        let timer = SimpleTimer()
        let sec = 4.0

        timer.run()

        RunLoop.current.run(until: Date(timeIntervalSinceNow: sec))

        timer.stop()

        XCTAssertEqual(timer.seconds, sec)
    }
}
