import XCTest

final class NotNilChallengeTests: XCTestCase {
    
    let attempts: Int = 10_000_000
    
    private let value: Int? = 1
    private var values: [Int?] = [Int?]()
    
    private func setUpArray() {
        values.reserveCapacity(self.attempts)
        
        for i in 0..<attempts {
            values.append(i)
        }
    }
    
    func testIfLet() {
        setUpArray()
        
        measure {
            for i in 0..<self.attempts {
                if let _ = self.values[i] {}
            }
        }
    }
    
    func testIfNotNil() {
        setUpArray()
        
        measure {
            for i in 0..<self.attempts {
                if self.values[i] != nil {}
            }
        }
    }
    
    
    static var allTests = [
        ("testIfLet", testIfLet),
        ("testIfNotNil", testIfNotNil)
    ]
    
}
