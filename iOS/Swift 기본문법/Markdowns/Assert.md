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