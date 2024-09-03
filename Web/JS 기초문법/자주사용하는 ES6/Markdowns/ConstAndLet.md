# const 와 let
- `var`은 ES6 이전에 사용되던 선언 키워드이다. **함수스코프**를 가지며 이는 `var`로 선언된 변수가 함수 내에선 지역, 밖에선 전역변수로 작동된다는 것을 의미
- `let`과 `const`는 ES6에서 도입된 선언 키워드로 **블록스코프**를 가진다. 이는 let과 const로 선언된 변수가 함수 내에서만 유효하다는 의미이다.

## 호이스팅?

>**hositing(호이스팅)** 은 스코프의 최상단으로 끌어올려지는 것 을 의미

`let`과 `const`도 호이스팅이 되긴 하지만 일시적 사각지대(Temporal Dead Zone, TDZ)'를 가져 선언 전에는 접근할 수 없다.

## 구분해서 사용하는 법?
`var`는 '호이스팅(hoisting)'을 일으킨다. 때문에 **이벤트를 실행하는 단일단추**가 있거나 **HTML 요소**를 선택하려면 `const`를 사용하는 것이 좋다.
>변수를 재할당하지 않으려면 항상 상수를 사용하는 것이 좋습니다.

### const
``` js
// ES5
var MyVarButton = document.getElementById('myButton');
// ES6
const MyConstButton = document.getElementById('myButton');
```

위 코드에서 `const`는 재할당 불가하다. 초기화 하려하면 에러 발생<br>
즉 변경 불가한 **상수**!!

### let
 
``` js
let name = '승재';
name = 'Seungjae';
console.log(name);
// output >> Seungjae
```
`let`은 새로운 값을 가질 수 있고, 재할당도 가능합니다.<br>
즉 변경가능한 **변수**!!