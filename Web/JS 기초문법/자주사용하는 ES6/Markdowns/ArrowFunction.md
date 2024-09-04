# Arrow function(화살표 함수)
> 화살표 함수는 코드의 가독성을 올리고, 더 체계적이고, 최신코드 처럼 보이게 합니다.

아래 코드 대신,
``` js
// ES5
function myFunc(name) {
    return '안녕' + name;
}

console.log(myFunc('영희'));
// output >> 안녕영희
``` 

다음 코드를 사용합니다.
``` js
// ES6
const myFunc = (name) => {
    return `안녕 ${name}`; // <- 백틱 사용>
}
console.log(myFunc('영희')); // output >> 안녕영희

//또는 간결하게 화살표를 사용하거나 'return'키워드를 생략해도 됩니다.
const myFunc = (name) => '안녕 ${name}';
console.log(myFunc('영희')); // output >> 안녕 영희
```

또한 화살표 함수를 `map`과 `filter`, `reduce` 등 내장 함수와 함게 사용 가능

``` js
const myArr = [1, 2, 3, 4, 5];

// ES5

let arr1 = myArr.map(function(item) {
    return item;
});
console.log(arr1); // output >> [1, 2, 3, 4, 5]

// ES6
let arr2 = myArr.map((item) => item);
sole.log(arr2); // output >> (5) [1, 2, 3, 4, 5]
```

`filter`와 `reduce`도 똑같이 사용 가능합니다.