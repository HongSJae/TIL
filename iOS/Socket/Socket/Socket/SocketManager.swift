import SwiftUI
import SocketIO

final class SocketIOManager {
    static let shared = SocketIOManager()
    var manager = SocketManager(
        socketURL: URL(string: "http://localhost:9000")!,
        config: [
            .log(true),
            .compress
        ]
    )
    var socket: SocketIOClient!

    init() {
        socket = self.manager.socket(forNamespace: "/test")
        
        socket.on("test") { dataArray, ack in
            print(dataArray)
        }
    }

    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
   
    func sendMessage(message: String, nickname: String) {
        socket.emit("event",  ["message" : "This is a test message"])
        socket.emit("event1", [["name" : "ns"], ["email" : "@naver.com"]])
        socket.emit("event2", ["name" : "ns", "email" : "@naver.com"])
        socket.emit("msg", ["nick": nickname, "msg" : message])
    }
}
