import Foundation

/// A type thats holds the information for the localization
@_documentation(visibility: internal)
public struct LocalizedString: Content {
    
    /// The key of the translation value
    public let key: String
    
    /// The name of the translation table
    public let tableName: String?
    
    /// The default value for the translation if none is found in the table
    public let value: String
    
    /// The default value for the translation if none is found in the table
    public let comment: String
    
    public var postProcessor: (_ localizedValue: String, _ localization: Localization, _ environment: Environment) -> Content = { str, _, _ in str }
    
    public init(_ key: String, tableName: String? = nil, value: String = "", comment: String) {
        self.key = key
        self.tableName = tableName
        self.value = value
        self.comment = comment
    }
    
    public func postProcessed(_ postProcessor: @escaping (String, Localization, Environment) -> Content) -> Self {
        var ret = self
        ret.postProcessor = postProcessor
        return ret
    }
    
}
