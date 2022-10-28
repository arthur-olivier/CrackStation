//
// SI Lab, 2022
//

public struct CrackStation: Decrypter {
    let mylibrary : MyLibrary
    let lookuptable : [String : String]

    public init() {
        mylibrary=MyLibrary()
        lookuptable = try! mylibrary.loadDictionaryFromDisk()
    }

    public func decrypt(shaHash: String) -> String? {
        let password = lookuptable[shaHash]
        return password
    }
}

