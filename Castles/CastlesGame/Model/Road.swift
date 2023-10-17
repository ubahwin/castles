import Foundation

struct Road: Identifiable, Equatable {
    var id = UUID()

    var fromCastle: Castle
    var toCastle: Castle

    static func == (lhs: Road, rhs: Road) -> Bool {
        return lhs.fromCastle == rhs.fromCastle && lhs.toCastle == rhs.toCastle
    }
}
