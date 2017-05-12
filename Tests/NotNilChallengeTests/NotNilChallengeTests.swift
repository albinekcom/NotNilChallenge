import XCTest

final class NotNilChallengeTests: XCTestCase {

    let attempts = 10_000_000

    private let value: Int? = 1

    func testIfLet() {
        measure {
            for _ in 0..<self.attempts {
                if let _ = self.value {}
            }
        }
    }

    func testIfNotNil() {
        measure {
            for _ in 0..<self.attempts {
                if self.value != nil {}
            }
        }
    }


    static var allTests = [
        ("testIfLet", testIfLet),
        ("testIfNotNil", testIfNotNil)
    ]

}
