# Array and object destructing(배열 및 객체 비 구조화)
>비구조화를 통해 배열 또는 객체의 값을 새 변수에 더 쉽게 할당할 수 있습니다.

## 객체
이전 문법:
``` js
// ES5
const contacts = {
    famillyName: '홍',
    name: '승재',
    age: 19
};

let famillyName = contacts.famillyName;
let name = contacts.name;
let age = contacts.age;

console.log(famillyName)
console.log(name)
console.log(age)
// 홍
// 승재
// 19
```
ES6 문법:
``` js
// ES6
const contacts = {
    famillyName: '홍',
    name: '승재',
    age: 19
};

let { famillyName, name, age } = contacts;

console.log(famillyName)
console.log(name)
console.log(age)
// 홍
// 승재
// 19
```
>하지만 위처럼 사용하지 않고, 속성 이름과 동일하지 않은 변수명으로 선언하면 undefined가 반환됩니다. 

예를 들어 속성 명이 `name`이고 `username` 변수에 할당하면 undefined 됩니다.

우리는 항상 속성의 이름과 동일한 변수 이름을 지정해야합니다.
그러나 변수명을 바꾸려면 `:`을 사용할 수 있습니다.

```js
// ES6
const contacts = {
    famillyName: '홍',
    name: '승재',
    age: 19
};

let { famillyName, name: username, age } = contacts;

console.log(username);
// 승재
```

## 배열
>배열의 경우 객체와 동일한 구문을 사용합니다. 중괄호만 대괄호로 바꾸면 됩니다.

```js
const arr = [1, 2, 3, 4];

let [value1, value2, value3] = arr;

console.log(value1);
console.log(value2);
console.log(value3);
// 1
// 2
// 3
```