import Foundation

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
public class GetLookUpTable {
     func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        
        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)
        
        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }
}

