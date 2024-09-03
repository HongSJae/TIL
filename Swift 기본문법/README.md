
# Swift Study
- 클래스는 **참조(reference)** 타입입니다.
- 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.
- Swift의 클래스는 다중 상속이 되지 않습니다.



```swift
class 이름 {
    /* 구현부 */
}
```
## 구조체

- 스위프트 대부분 타입은 구조체로 이루어져 있습니다.

- 구조체는 **값(value) 타입**입니다.
- 타입이름은 대문자 카멜케이스를 사용하여 정의합니다

```swift
struct 이름 {
    /* 구현부 */
}
```

# 클로저

- 클로저는 중괄호 { }로 감싸져있습니다.

- 괄호를 이용해 파라미터를 정의합니다.

- > 을 이용해 반환 타입을 명시합니다.

- "in" 키워드를 이용해 실행 코드와 분리합니다.

```swift
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
```


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

# 값 타입 / 참조 타입

- Class

  - 전통적인 OPP 관점에서의 클래스
  - 단일상속
  - (인스턴스/타입) 메서드
  - (인스턴스/타입) 프로퍼티
  - **참조타입**
  - Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성

- Struct(구조체)

  - C 언어 등의 구조체보다 다양한 기능
  - 상속 불가
  - (인스턴스/타입) 메서드
  - 인스턴스/타입) 프로퍼티
  - **값 타입**
  - Swift의 대부분의 큰 뼈대는 모두 구조체로 구성

- Enum

  - 다른 언어의 열거형과는 많이 다른 존재

  - 상속 불가

  - (인스턴스/타입) 메서드

  - (인스턴스/타입) 연산 프로퍼티

  - **값 타입**

  - Enumeration

  - 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의

    예) 요일, 상태값, 월(Month) 등

  - 열거형 자체가 하나의 데이터 타입

    열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급

  - 선언 키워드 - enum

|                   | Class           | Struct    | Enum      |
| ----------------- | --------------- | --------- | --------- |
| Type              | Reference(참조) | Value(값) | Value(값) |
| Subclassing(참조) | O               | X         | X         |
| Extension         | O               | O         | O         |

### 구조체는 언제사용하나요?

- 연관된 몇몇의 값들을 모아서

  하나의 데이터타입으로 표현하고 싶을 때

- 다른 객체 또는 함수 등으로 전달 될 때

  **참조가 아닌 복사를 원할 때**

- 자신을 상속할 필요가 없거나,

  자신이 다른 타입을 **상속받을 필요가 없을 때**

- Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용

### Value vs Reference

- Value

> 데이터를 전달할 때 값을 복사하여 전달

- Reference

> 데이터를 전달할 때 값의 메모리 위치를 전달

## Swift LOVEs Struct

- 스위프트는 구조체, 열거형 사용 선호
- Apple 프레임워크는 대부분 클래스 사용
- Apple 프레임워크 사용시 구조체/클래스 선택은 우리의 몫

# 프로퍼티

- 프로퍼티란 클래스, 구조체, 열거형에서 소속된 변수 및 속성 등을 불리는 개념
- 메서드는 특정 타입에 관련된 함수
- 변수나 상수, 함수 언제 어느 목적에 사용되는지에 따라 용어가 프로퍼티 또는 메서드로 불린

------

💡 프로퍼티 종류

➜ 저장 프로퍼티 `Stored Property`

➜ 연산 프로퍼티 `Computed Property`

➜ 타입 프로퍼티 `Type Property`

➜ 프로퍼티 감시자 `Property Observers`

------

### 저장프로퍼티

- 인스턴트스의 변수나 상수를 의미
- 구조체와 클래스에서만 사용 가능
- 저장 프로퍼티는 사용 시점에 따라 `Lazy Stored Property` (지연 저장 프로퍼티)라는 것도 있음
- 특정 타입의 인스턴스에 사용되는 것을 뜻함

------

### 연산 프로퍼티

- 쿨래스, 구조체, 열거형에서 사용 가능
- `var` 로 선언해야 함
- 클래스, 구조체, 열거형에 값을 저장할 저장 프로퍼티가 반드시 하나 있어야 함
- `get`, `set` 을 동시에 구현 가능하고, 읽기 전용으로 `get` 만 구현 가능
- `set` 의 매개변수를 생략한다면 반드시 `newValue` 키워드를 사용해야 함
- 직접적인 값을 저장하지 않고 값을 연산한 결괏값
- 특정 타입의 인스턴스에 사용되는 것을 뜻함

------

### 타입 프로퍼티

- 특정 타입에 사용되는 프로퍼티 (클래스 변수)

------

### 프로퍼티 옵저버(감시자)

- 프로퍼티 옵저버는 값이 변경되면 작업을 취할 수 있음
- 프로퍼티 값이 변경될 때마다 호출, 변경되는 값이 현재 값과 같더라도 호출됨
- 상속받은 저장 프로퍼티 또는 연산 프로퍼티에도 적용됨
- 상속받지 않은 연산 프로퍼티에는 사용 불가(사용할 필요도 없음) : `getter` 과 `setter` 을 통해 감시자를 구현할 수 있기 떼문
- `willSet` : 값이 변경되기 전에 호출하는 매서드
- `didSet` : 메서드와 프로퍼티 값이 변경된 직후에 호출하는 메서드
# 클래스의 상속/재정의

------

### 스위프트 상속

- 상속은 클래스, 프로토콜 등에서 가능합니다.
- 열거형, 구조체는 상속이 불가능합니다.
- 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.

```swift
class 클래스명: 부모클래스명 {
    /* 구현부 */
}
```

------

### 재정의

클래스는 메서드나 프로퍼티 등을 다른 클래스로부터 상속 받을 수 있습니다.

- final 키워드를 사용하면 재정의(Override)방지 가능
- static 키워드를 사용해 타입 메소드를 만들면 재정의 불가능
- class 키워드를 사용해 타입 메소드를 만들면 재정의 가능
- class 앞에 final 을 뭍이면 static 키워드를 사용한 것과 동일( final class~ = static~)
- override 키워드를 사용하여 부모 클래스 메소드 재정의 가능

------

### 자식, 부모, 기반 클래스란?

- A클래스로 부터 상속을 받으면 상속받은 B클래스는 A클래스의 자식클래스 라고 한다
- 자식클래스에게 자신의 특성을 물려준 A클래스를 부모클래스 라고한다
- 다른 클래스로부터 상속을 받지 않은 클래스를 기반클래스 라고한다. (대부분의 클래스)

```swift
// SuperClass 부모 클래스
 
class Seogun {
    func name() {
        print("저의 이름은 서근 입니다")
    }
}
 
// SubClass 자식 클래스
 
class Mijin: Seogun {
    override func name() {
        print("저의 이름은 미진 입니다")
    }
}
 
// Base class 기반 클래스
 
class Person {
  var name: String
  var age: Int
  
  var introduction: String {
    return "이름 : \\(name). 나이 : \\(age)"
  }
}
```

------

### 상속 관계

NSObject > UIResponder > UIView > UIControl > UIButton/UILabel/UISlider...

------

상속은 Swift의 다른 타입과 클래스를 구별 짓는 클래스 만의 특징이다.

- 클래스는 부모클래스로부터 물려받은 메서드 호출 및 프로퍼티 접근 그리고 서브스크립트 사용 가능
- 부모클래스로부터 물려받은 메서드, 프로퍼티, 서브스크립트 등을                                                      자신만의 내용으로 재정의(`override`) 가능
- 자식클래스에서 재정의 할 때 자식클래스가 부모클래스의 요소를                                                      재정의 한다는 것을 명확히 확인해야 함
- 상속받은 프로퍼티에 값이 변경되었을 때 알려주는 프로퍼티 옵저버 구현 가능
- 연산 프로퍼티를 정의한 클래스에선 연산 프로퍼티에 프로퍼티 옵저버를 사용할 수 없지만,  부모클래스에서 연산 또는 저장 프로퍼티로 정의했으면 자식클래스에서는     
                                    프로퍼티 옵저버를 구현할 수 있음
# 옵셔널 체이닝

------

### 옵셔널 체이닝이란?

옵셔널 요소 내부의 프로퍼티로, 또 다시 **옵셔널이 연속적으로 연결되는 경우** 유용하게 사용할 수 있는 기능이다.

------

옵셔널 체이닝을 사용하지 않는다면…

```swift
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let 'guard' = home.guard {
                if let guardjob = 'guard'.job {
                    print("우리집 경비원의 직업은 \\(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}
```

옵셔널 체이닝을 사용한다면…

```swift
func guardJobWithOptionalChining(owner: Person?) {
    if let guardjob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \\(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChining(owner: Reswo)
//우리집 경비원은 직업이 없어요
```

------

### nil 병합 연산자

```swift
(변수이름) = ㅁㅁㅁ?.ㅇㅇㅇ?.ㅅㅅㅅ?.ㅂㅂㅂ ?? “초성”
print(변수이름) // 초성
```

만약 마지막 **ㅂㅂㅂ이 nil 이면** 물음표 뒤에 **“초성"을 변수에 저장**한다.

### 인스턴스 (instance)

Swift 에서는 클래스 / 구조체 / 열거형에서 생성된 객체를 '인스턴스'라고 지칭한다.

```
var Seungchan:Person = Person();
```

### 프로퍼티 (Property)

Swift 에서는 클래스, 구조체, 열거형과 연관되어 있는 정보 / 값 등을 의미한다.

```
struct FixedLengthRange {
	var firstValue: Int
    var length: Int
}
```

### 메서드 (Method)

Swift 에서는 클래스, 구조체, 열거형과 관련된 함수라는 의미로 사용한다.

```
class SomeClass {
	func simpleMethod() {
    	print("Simple Method")
    }
    
    func sum(a: Int, b: Int) -> Int {
    	return a + b
    }
}
```

# 타입 캐스팅

------

### 타입캐스팅이란?

인스턴스 **타입을 확인**하거나, 인스턴스 타입을 **부모클래스** 또는 **자식클래스**처럼 **다루기 위해 사용**한다.

- Swift에서 타입 캐스팅은 `is` 와 `as` 연산자를 사용하여 구현함
- 이 두 연산자는 값 타입을 확인하거나, 값을 다른 타입으로 전환(`Cast`)하는 간단하고 표현적인 방법을 제공함
- 타입 캐스팅을 통해 특정 클래스 인스턴스의 타입을 확인 가능
- 타입 캐스팅을 통해 프로토콜을 준수하는지도 확인가능

------

### 먼저 알아볼 것은 **‘타입 캐스팅을 통해 특정 클래스 인스턴스의 타입을 확인 가능'** 부분이다.

인스턴스 타입은 `is` 키워드를 사용해서 확인 가능하다.

```swift
class Person {
	var name: String
	init(name: String) {
		self.name = name
	}
}

var Reswo = Person(name: "승재")

if Reswo is Person {
	print(true) //true
}
```

`Person` 이라는 클래스를 정의하고 초깃값이 없기 때문에 초기화를 해줬다. 그리고 `is` 키워드를 통해 ‘`Reswo`’이 ‘`Person`’ 타입이 맞는지 확인한다.

이런 식으로 인스턴스 자체를 확인할 수 도 잇지만, 인스턴스의 프로퍼티도 확인 가능하다.

```swift
var Reswo = Person(name: "승재")

if Reswo.name is String {
	print(true)
}
```

`is` 타입 확인 키워드는 항상 `true` 이여야만 한다는 걸 기억해야 한다!

------

## 다운 캐스팅

특정 클래스 타입의 상수 또는 변수는 하위 클래스의 인스턴스를 참조할 수 있다. 이 경우, 타입캐스트 연산자 `as?` 또는 `as!` 를 사용하여 서브 클래스 타입으로 `downcasting`을 시도할 수 있다.

다운 캐스팅은 실패할 여지가 충분히 있기 때문에 타입 캐스트 연산자는 두 가지 형태로 제공된다.

------

### as?

- 조건부 형식인 `as?` 는 다운 캐스팅하려는 타입의 옵셔널 값을 반환한다.
- 캐스팅에 실패할 경우 `nil`을 반환한다.
- 캐스팅에 성공하면 옵셔널 타입으로 인스턴스를 반환한다.
- 실패할 가능성이 있으면 조건부 연산자인 `as?`를 사용
- 런타임에 실행된다.

------

### as!

- 강제 형식인 `as!` 는 강제 언래핑을 하여 값을 반환한다.
- 캐스팅에 실패할 경우 런타임 오류가 발생한다.
- 캐스팅에 성공할 경우 옵셔널이 아닌 인스턴스를 반환한다.
- 항상 성공할 것이라는 확신이 있으면 강제 형식인 `as!` 를 사용
- 런타임에 실행된다.

# Assert

------

### Assert는 무엇을 하나요?

애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

------

### Assert

- `assert(_:_:file:line)` 함수를 사용합니다.
- `assert` 함수는 **디버깅 모드**에서만 작동합니다.
- 배포하는 애플리케이션에서는 제외됩니다.
- 예상했던 **조건의 검증을 위하여** 사용합니다.

💡 `assert(_:_:file:line)` 와 같은 역할을 하지만 실제 배포 환경에서도 동작하는`precondition(_:_:file:line)` 함수도 있습니다.

------

```swift
var someInt: Int = 0

assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) 동작중지, 검증실패
//assert(someInt == 0, "someInt != 0") 동작중지, 검증실패
/*assertion failed: someInt != 0: file guard_assert.swift, line 26*/
func FunctionWithAssert(age: Int?) {
	
	assert(age != nil, "age == nil")
	
	assert((age! >= 0)&&(age! <= 130), "나이값 입력이 잘못되었습니다.")
	print("당신의 나이는 \\(age!)세 입니다.")
}
FunctionWithAssert(age: 50) //당신의 나이는 50세 입니다.
//FunctionWithAssert(age: -1) //나이값 입력이 잘못되었습니다. //동작중지, 검증실패
//FunctionWithAssert(age: nil) //age == nil //동작중지, 검증실패
```

```swift
func FunctionWithAssert(age: Int?) {
	
	assert(age != nil, "age == nil")
	
	assert((age! >= 0)&&(age! <= 130), "나이값 입력이 잘못되었습니다.")
	print("당신의 나이는 \\(age!)세 입니다.")
}
FunctionWithAssert(age: 50) //당신의 나이는 50세 입니다.
//FunctionWithAssert(age: -1) //나이값 입력이 잘못되었습니다. //동작중지, 검증실패
//FunctionWithAssert(age: nil) //age == nil //동작중지, 검증실패
```

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