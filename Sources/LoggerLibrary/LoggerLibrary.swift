// The Swift Programming Language
// https://docs.swift.org/swift-book

/**
 远程仓库：
 1、先在GitHub个人仓库中创建一个 xxx名称 的仓库
 2、终端 -- cd 本地某文件夹 -- git clone https://xxx仓库.xxx.git（HTTPS路径）
 3、在刚才克隆到本地的文件夹（xxx仓库）中创建 自定义 package
 4、在 git add. git commit 之后  git push origin main(可能是其他分支名)，将本地package提交到远程仓库
 补充：第3点中 Package.swift 必须位于该文件夹的第一层（即将 package文件夹中的所有文件转移到 xxx仓库文件夹中）
 */

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
