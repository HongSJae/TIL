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

상속하려면 `extends`를 사용하세요!

``` js
class myClass {
    constructor(name, age) {
        this.name = name
        this.age = age
    }

    sayHello() {
        console.log(`안녕 ${name}, 너의 나이는 ${age}살이다.`);
    }
}

class UserProfile extends myClass {
    userName() {
        console.log(this.name);
    }
}

const profile = new UserProfile('승재', 19);

profile.sayHello(); // 안녕 승재 너의 나이는 19살이다.
profile.userName(); // 승재
```