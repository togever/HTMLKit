/// A type that represents a locale
///
/// A locale holds information about language, region and cultural preferences.
@_documentation(visibility: internal)
public struct Locale: Hashable {
    
    /// A enumeration of potential language tags
    public enum Tag: String {
        
        case arabic = "ar"
        case belarusian = "be"
        case bulgarian = "bg"
        case catalan = "ca"
        case czech = "cs"
        case danish = "da"
        case german = "de"
        case greek = "el"
        case english = "en"
        case spanish = "es"
        case finnish = "fi"
        case french = "fr"
        case icelandic = "is"
        case italian = "it"
        case japanese = "ja"
        case hebrew = "he"
        case hindi = "hi"
        case croation = "hr"
        case hungarian = "hu"
        case korean = "ko"
        case lithuanian = "lt"
        case latvian = "lv"
        case macedonian = "mk"
        case norwegian = "nb"
        case dutch = "nl"
        case polish = "pl"
        case portuguese = "pt"
        case romanian = "ro"
        case russian = "ru"
        case serbian = "sr"
        case slovak = "sk"
        case slovenian = "sl"
        case albanian = "sq"
        case swedish = "sv"
        case thai = "th"
        case turkish = "tr"
        case ukrainian = "uk"
        case chinese = "zh"
    }
    
    /// The language code of the language
    ///
    /// The language code represents the generic language.
    public var language: String? {
        return tag.components(separatedBy: "-").first
    }
    
    /// The region code of the language
    ///
    /// The region code refers to the regional dialect of a language.
    public var region: String? {
        
        let components = tag.components(separatedBy: "-")
        
        if components.count > 1 {
            return components.last
        }
        
        return nil
    }
    
    /// The locale identifier
    public let tag: String
    
    public init(tag: String) {
        self.tag = tag
    }
    
    public init(tag: Tag) {
        self.tag = tag.rawValue
    }
    
}
