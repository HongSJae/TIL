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