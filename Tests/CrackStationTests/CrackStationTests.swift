import XCTest
@testable import CrackStation


final class CrackStationTests: XCTestCase {
    
    public func testCrack() throws  {
        
        // When
        let shaHash = "29c1b289e7522195b362e44f54e05470b69ad20540ab60a18a05e5bf6951f13d"
    
        let password = CrackStation().decrypt(shaHash: shaHash)
    
        if password == nil {
                print("error")
        }
        
       // Then
        XCTAssertEqual(password, "m2")
            
        }
}
