import XCTest

final class NotNilChallengeTests: XCTestCase {
    
    let attempts = 10_000_000
    
    
    func testIfLet() {
        let value: Int? = 1
        
        measure {
            for _ in 0..<self.attempts {
                if let _ = value {}
            }
        }
    }
    
    func testIfNotNil() {
        let value: Int? = 1
        
        measure {
            for _ in 0..<self.attempts {
                if value != nil {}
            }
        }
    }
    
    
    static var allTests = [
        ("testIfLet", testIfLet),
        ("testIfNotNil", testIfNotNil)
    ]
    
}
