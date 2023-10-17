import Foundation

protocol Timer {
    func run()
    func stop()
    func every(action: Void)
}
