import UIKit
import RxSwift

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

example(of: "just, of, from") {
    // 1
    let one = 1
    let two = 2
    let three = 3
    
    //2
    let observable:Observable<Int> = Observable<Int>.just(one)
    let observable2 = Observable.of(one, two, three)
    let observable3 = Observable.of([one, two, three])
    let observable4 = Observable.from([one, two, three])
//    let observer = NotificationCenter.default.addObserver(
//        forName: .UIResponder.keyboardDidChangeFrameNotification,
//        object: nil,
//        queue: nil
//    ) { notification in
//        // Handle receiving notification
//    }
}
print("hello")
let sequence = 0..<3
var iterator = sequence.makeIterator()
while let n = iterator.next() {
    print(n)
}

example(of: "subscribe") {
    let one = 1
    let two = 2
    let three = 3
    
    let observable = Observable.of(one, two, three)
    observable.subscribe({ (event) in
        print("This is \(event)")
    })
    observable.subscribe { event in
        if let element = event.element {
            print(element)
        }
    }
    observable.subscribe(onNext: { (element) in
        print(element)
    })
}
example(of: "empty") {
    let observable = Observable<Void>.empty()
    
    observable.subscribe(
        
        // 1
        onNext: { (element) in
            print(element)
    },
        
        // 2
        onCompleted: {
            print("Completed")
        }
    )
}
