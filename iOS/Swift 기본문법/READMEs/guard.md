# guard

------

### guard(빠른종료 - Early Exit)

- `guard`를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료합니다.
- 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다.
- `guard`의 `else` 블럭 내부의는 특정 코드블럭을 종료하는 지시어(`return`, `break` 등)가 꼭 있어야 합니다.
- 타입 케스팅, 옵셔널과도 자주 사용됩니다.
- 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다.

------

```swift
func functionWithGuard(age: Int?) {

    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }

    print("당신의 나이는 \\(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }

    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }

    print("\\(name): \\(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
```

*** if let / gurad 를 이용한 옵셔널 바인딩 비교 ****

```swift
// 1. if let 옵셔널 바인딩
if let unwrapped: Int = someValue {
// do something
   unwrapped = 3
}
// if 구문 외부에서는 unwrapped 사용이 불가능 합니다.
// unwrapped = 5

// 2. guard 옵셔널 바인딩
// gaurd 구문 이후에도 unwrapped 사용 가능합니다.
guard let unwrapped: Int = someValue else {
         return
}
unwrapped = 3
```