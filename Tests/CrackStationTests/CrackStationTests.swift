import XCTest
@testable import CrackStation


final class CrackStationTests: XCTestCase {
    
    public func testCrack() throws  {
        
        // When
        let shaHash = "c29dd6c83b67a1d6d3b28588a1f068b68689aa1d"
    
        let password = CrackStation().decrypt(shaHash: shaHash)
    
        if password == nil {
                print("error")
        }
        
       // Then
        XCTAssertEqual(password, "ao")
            
        }
}
