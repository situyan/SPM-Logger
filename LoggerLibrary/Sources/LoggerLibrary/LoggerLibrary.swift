// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct LoggerLibrary {
    public enum LogLevel: String {
        case normal = "Logger-normal"
        case warnning = "Logger-warnning"
        case serious = "Logger-serious"
    }
    var DEBUG: Bool = false
    
    public init(_ debug: Bool) {
        self.DEBUG = debug
    }
    
    public func log(level: LoggerLibrary.LogLevel, _ msg: String) {
        if DEBUG {
            debugPrint("\(level.rawValue): \(msg)")
        }
    }
}
