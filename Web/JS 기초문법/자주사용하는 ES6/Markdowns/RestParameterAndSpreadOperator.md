# Rest paramerter and Spread operator(나머지 매개 변수 및 확산 연산자)

## Rest parameter
>Rest parameter는 배열의 인수를 가져오고 새 배열을 반환하는 데 사용됩니다.

```js
const arr = ['영희', '20', '열정적인 자바스크립트', '안녕', '지수', '어떻게 지내니?'];

// 비구조화를 이용한 값을 얻기
const [val1, val2, val3, ...rest] = arr;

const func = (restOfArr) => {
    return restOfArr
        .filter((item) => { return item })
        .join(" ");
}
console.log(func(rest));
// output >> 안녕 지수 어떻게 지내니?
```

## Spread operator
>Spread operator는 Rest parameter와 구문은 동일하지만 Spread operator는 인수 뿐만아니라 배열 자체를 가집니다. 

for 반복문이나 다른 메서드를 사용하는 대신 Spread operator를 사용하여 배열의 값을 가져올 수 있습니다.

``` js
const arr = ['영희', '20', '열정적인 자바스크립트', '안녕', '지수', '어떻게 지내니?'];

const func = (...anArr) => {
    return anArr
}

console.log(func(...arr));
// output >> [ '영희', '20', '열정적인 자바스크립트', '안녕', '지수', '어떻게 지내니?' ]
```