# 클로저

------

### **클로저란?**

- 일정 기능을 하는 코드를 하나의 블록으로 모아놓은 것을 말한다.
- 함수를 만들어 변수에 할당하고, 해당 변수를 사용하여 해당 함수를 호출하고, 해당 함수를 다른 함수에 매개 변수로 전달할 수도 있습니다.
- 이러한 방식으로 사용되는 함수를 클로저라고 하며 함수처럼 작동하지만 **약간 다르게 작성**됩니다.
- 클로저를 사용하는 가장 일반적인 이유 중 하나는 **기능을 저장**하는 것입니다.

------

### 클로저 예제

메시지를 인쇄하는 간단한 예제로 시작해 보겠습니다.

```swift
let driving = {
    print("나는 지금 운전을 하고 있다.")
}
```

------

### 클로저 속 매개변수

클로저에서 매개변수를 사용할 수 있다.

```swift
let driving = { (place: String) in
    print("저는 차를타고 \\(place)에 가고있습니다.")
}

driving("병원")
//저는 차를타고 병원에 가고있습니다.
```

------

### 클로저와 함수 비교

클로저와 함수의 차이점입니다.

```swift
func pay(user: String, amount: Int) {
    // code
}
let payment = { (user: String, amount: Int) in
    // code
}
```

보시다시피, 함수에서 매개변수는 { } 내부로 이동했으며 in 키워드는 매개변수 끝에 있고,

클로저의 본문이 시작한다고 표시하고 있습니다. 클로저는 Swift의 혼동을 피하기 위해 { } 안에

매개변수를 사용합니다.

------

### 튜플과 구분

만약 let paymet = (user: String, amount: Int) 이라고 작성했다면

클로저가 아닌 튜플을 만든 것처럼 보인다. 아래는 튜플의 예시이다.

```swift
var name = (first: "서근", last: "김")
```

------

### 클로저에서 값 변환

클로저는 값을 return 할 수도 있으며, 매개 변수와 유사하게 작성됩니다.

return하는 법은 클로저 내부 in 키워드 바로 앞에 작성합니다.

```swift
let driving = { (place: String) in
		print("저는 차를 타고 \\(place)에 가고있습니다.")
}
```

위 코드는 단순히 driving() 클로저를 가져와서 직접 출력하고 있습니다.                                                              하지만 이거 대신 그 값을 return 하도록 하겠습니다.                                                                                          메시지를 직접 출력하는 대신 문자열을 return 하는 클로저를 원하기 때문에                                                            → Stringin 을 사용한 다음 return 을 해서 일반 함수처럼 사용해아 합니다.

```swift
let drivingWithReturn = { (place: String) -> String in
    return "저는 차를타고 \\(place)에 가고있습니다."
}

let message = drivingWithReturn("병원")
print(message)
```