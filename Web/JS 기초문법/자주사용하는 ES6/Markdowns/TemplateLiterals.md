# Template Literals(템플릿 리터럴)
> 템플릿 리터럴 또는 템플릿 문자열은 꽤 멋집니다.

문자열을 연결하기 위해 `+`를 사용할 필요 없이, 백틱```(`)```을 사용하여 문자열 내에서 변수를 사용할 수 있다.

이전 문법:
```js
// ES5
function myFunc1(name, age) {
    return '안녕 '+name+' 너의 이름은 ' + age + '살 이다!';
}

console.log(myFunc1('승재', 19));
// output >> 안녕승재너의 이름은19살 이다!
```
새로운 ES6 문법:
``` js
// ES6
const myFunc = (name, age) => {
    `안녕 ${name}, 너의 나이는 ${age}살 이다!`;
}

console.log(myFunc1('승재', 19));
// output >> 안녕 승재, 너의 나이는 19살 이다!
```

이것이 ES6와 ES5의 가장 큰 차이점이다.
이전보다 더 체계적이고 잘 구성되어 있다.