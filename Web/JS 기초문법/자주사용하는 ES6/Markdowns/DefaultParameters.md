# Default Parameters(기본 매개 변수)
> 매개 변수를 쓰지 않은 경우 매개 변수가 이미 기본값에 정의되어 있으므로 undefined 오류가 반환되지 않습니다.

누락되니 매개 변수를 사용하여 함수를 실행할 때 기본 매개 변수 `t`값을 사용하고 오류를 반환하지 않습니다.

예시를 봅시다!
``` js
const myFunc = (name, age) => {
    return `안녕 ${name} 너의 나이는 ${age}살 이니?`;
};

const.log(myFunc('승재'));
// output >> 안녕 승재 너의 나이는 undefined살 이니?
```

위 함수는 정의 되지 않은 상태로 반환됩니다. 파람을 안넣었기 때문이겠죠?

아래와 같이 기본 매개변수를 설정해줄 수 있습니다.

```js
const myFunc = (name, age = 19) => {
    return `안녕 ${name} 너의 나이는 ${age}살 이니?`;
};

console.log(myFunc('승재'));
// output >> 안녕 승재 너의 나이는 19살 이니?
```