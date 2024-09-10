//
//  ContentView.swift
//  Socket
//
//  Created by 홍승재 on 9/9/24.
//

import SwiftUI
import SocketIO

enum ChatType: Int {
    case my = 0
    case your = 1

    var backgroundColor: Color {
        switch self {
        case .my:
            return .yellow
        case .your:
            return .white
        }
    }

    var edge: Edge.Set {
        switch self {
        case .my:
            return .leading
        case .your:
            return .trailing
        }
    }

    var alignment: Alignment {
        switch self {
        case .my:
            return .trailing
        case .your:
            return .leading
        }
    }
}

struct ChatModel: Hashable {
    let type: ChatType
    let message: String

    init(type: ChatType, message: String) {
        self.type = type
        self.message = message
    }
}

struct ContentView: View {
    var socket: SocketIOClient
    @State var text = ""
    @State var chatArray = [ChatModel]()

    init() {
        self.socket = SocketIOManager.shared.socket
    }

    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(chatArray, id: \.self) { chat in
                        chatCell(model: chat)
                    }
                }
                .padding(.horizontal, 16)
            }
            .frame(maxWidth: .infinity)
            .background(.cyan)

            HStack {
                TextField("채팅을 보내보세요", text: $text)
                    .textFieldStyle(.roundedBorder)

                Button("전송") {
                    self.socket.emit("test", text)

                    chatArray.append(.init(type: .my, message: text))
                }
                .foregroundStyle(.black)
                .padding(.vertical, 8)
                .padding(.horizontal, 12)
                .background(.yellow)
                .cornerRadius(8)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(.separator)
        }
        .onAppear {
            bindMsg()
//            chatArray = [
//                .init(type: .my, message: "안녕하세요"),
//                .init(type: .your, message: "네 반갑습니다")
//            ]
        }
        .onDisappear {
            SocketIOManager.shared.closeConnection()
        }
    }

    @ViewBuilder
    func chatCell(model: ChatModel) -> some View {
        Text(model.message)
            .multilineTextAlignment(.leading)
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
            .background(model.type.backgroundColor)
            .cornerRadius(6)
            .padding(model.type.edge, 50)
            .frame(maxWidth: .infinity, alignment: model.type.alignment)
    }

    func bindMsg() {
        self.socket.on("test") { dataArray, socketAck in
            print("-----------Divider----------")
            print("\(type(of: dataArray))")
            guard let data = dataArray[0] as? NSDictionary,
                  let intType = data["chat"] as? Int,
                  let type = ChatType(rawValue: intType),
                  let message = data["message"] as? String else { return }

            chatArray.append(.init(type: type, message: message))
            print(chatArray.last!)
        }
    }
}

#Preview {
    ContentView()
}
