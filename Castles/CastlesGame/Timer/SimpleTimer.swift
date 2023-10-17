import Foundation

class SimpleTimer: Timer {
    private var timer: Foundation.Timer?
    var secondsInterval: Double
    var seconds: Double = 0.0

    init(secondsInterval: Double = 1.0) {
        self.secondsInterval = secondsInterval
    }

    func run() {
        timer = Foundation.Timer.scheduledTimer(
            withTimeInterval: secondsInterval,
            repeats: true) { _ in
                self.seconds += 1
            }
    }

    func stop() {
        timer?.invalidate()
        timer = nil
        print("Таймер остановлен. Прошло секунд: \(seconds)")
    }

    func every(action: Void) {

    }
}
