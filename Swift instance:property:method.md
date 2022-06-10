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