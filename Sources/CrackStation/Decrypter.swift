//
// SI Lab, 2022
//

public struct CrackStation: Decrypter {
    private let lookuptable : [String : String]
    
    public init() {
        do {
            lookuptable = try GetLookUpTable().loadDictionaryFromDisk()
        }
        catch{ lookuptable = ["":""]}
    }

    public func decrypt(shaHash: String) -> String? {
        let password = lookuptable[shaHash]
        return password
    }
}

