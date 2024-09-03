# Classes(클래스)
객채지향(OOP)의 핵심!!

``` js
class myClass {
    constructor() { // <- Swift의 init 느낌
        
    }
}
```

이제 `new`키워드를 사용해여 `class` 메서드와 속성을 액세스할 수 있습니다.

```js
class myClass {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
}

const user = new myClass('승재', 19);

console.log(user.name); // 승재
console.log(user.age); // 19
```