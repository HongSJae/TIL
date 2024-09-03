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
        print(event)
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

example(of: "never") {
    let observable = Observable<Any>.never()
    
    observable.subscribe(
        onNext: { (element) in
            print(element)
        },
        onCompleted: {
            print("Completed")
        }
    )
}

example(of: "range") {
    
    //1
    let observable = Observable<Int>.range(start: 1, count: 10)
    
    observable.subscribe(onNext: { (i) in
        //2
        let n = Double(i)
        let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n)) / 2.23606).rounded())
        print(fibonacci)
    })
}

example(of: "dispose") {
    
    // 1
    let observable = Observable.of("A", "B", "C")
    
    // 2
    let subscription = observable.subscribe({ (event) in
        
        // 3
        print(event)
    })
    
    subscription.dispose()
}

example(of: "DisposeBag") {
    
    // 1
    let disposeBag = DisposeBag()
    
    // 2
    Observable.of("A", "B", "C")
        .subscribe{ // 3
            print($0)
        }
        .disposed(by: disposeBag) // 4
    /*
     - 귀찮게 이런 짓을 왜 매번 해야하는걸까?

        - 만약 dispose bag을 subscription에 추가하거나 수동적으로 dispose를 호출하는 것을 빼먹는다면, 당연히 메모리 누수가 일어날 것이다.
        - 하지만 걱정마. Swift 컴파일러가 disposable을 쓰지 않을 때마다 경고를 날려줄거임 ^^
     */
}

enum MyError: Error {
    case anError
}

example(of: "create") {
    let disposeBag = DisposeBag()
    
    Observable<String>.create({ (observer) -> Disposable in
        // 1
        observer.onNext("1")
        
        // 5
//        observer.onError(MyError.anError)
        
        // 2
//        observer.onCompleted()
        
        // 3
        observer.onNext("?")
        
        // 4
        return Disposables.create()
    })
    .subscribe(
        onNext: { print($0) },
        onError: { print($0) },
        onCompleted: { print("Completed") },
        onDisposed: { print("Disposed") }
    )
//    .disposed(by: disposeBag)
}

example(of: "deferred") {
    let disposeBag = DisposeBag()
    
    // 1
    var flip = false
    
    // 2
    let factory: Observable<Int> = Observable.deferred{
        
        // 3
        flip.toggle()
        
        // 4
        if flip {
            return Observable.of(1,2,3)
        } else {
            return Observable.of(4,5,6)
        }
    }
    
    for _ in 0...3 {
        factory.subscribe(onNext: {
            print($0, terminator: "")
        })
            .disposed(by: disposeBag)
        
        print()
    }
}

example(of: "Single") {
    
    // 1
    let disposeBag = DisposeBag()
    
    // 2
    enum FileReadError: Error {
        case fileNotFound, unreadable, encodingFailed
    }
    
    // 3
    func loadText(from name: String) -> Single<String> {
        // 4
        return Single.create { single in
            // 4 - 1
            let disposable = Disposables.create()
            
            // 4 - 2
            guard let path = Bundle.main.path(forResource: name, ofType: "txt") else {
                single(.failure(FileReadError.fileNotFound))
                return disposable
            }
            
            // 4 - 3
            guard let data = FileManager.default.contents(atPath: path) else {
                single(.failure(FileReadError.unreadable))
                return disposable
            }
            
            // 4 - 4
            guard let contents = String(data: data, encoding: .utf8) else {
                single(.failure(FileReadError.encodingFailed))
                return disposable
            }
            
            // 4 - 5
            single(.success(contents))
            return disposable
        }
    }
//    loadText(from: "Copyright")
//        .subscribe {
//            switch $0 {
//            case .success(let string):
//                print(string)
//            case .error(let error):
//                print(error)
//            }
//        }
//        .disposed(by: disposeBag)
}

example(of: "never") {
    let observable = Observable<String>.of("a", "b", "c", "d", "e")
    
    // 1. 문제에서 요구한 dispose bag 생성
    let disposeBag = DisposeBag()
    
    // 2. 그냥 뚫고 지나간다는 do의 onSubscribe 에다가 구독했음을 표시하는 문구를 프린트하도록 함
    observable.do(
        onSubscribe: { print("Subscribed")}
        ).subscribe(                    // 3. 그리고 subscribe 함
            onNext: { (element) in
                print(element)
        },
            onCompleted: {
                print("Completed")
        }
    )
    .disposed(by: disposeBag)            // 4. 앞서 만든 쓰레기봉지에 버려줌
}

example(of: "PublishSubject") {

    // 1
    let subject = PublishSubject<String>()

    // 2
    subject.onNext("Is anyone listening?")

    // 3
    let subscriptionOne = subject
        .subscribe(onNext: { (string) in
            print("string: \(string)")
        })

    // 4
    subject.on(.next("1"))        //Print: 1

    // 5
    subject.onNext("2")        //Print: 2
}
