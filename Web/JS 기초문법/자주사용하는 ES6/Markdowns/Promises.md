# Promise(프로미스)
> 비동기 코드를 쓰는 방법입니다.
```js
const myPromise = () => {
    return new Promise((resolve, reject) => {
        resolve('안녕하세요 Promise가 성공적으로 실행했습니다');
    });
};

console.log(myPromise());
// output >> Promise { '안녕하세요 Promise가 성공적으로 실행했습니다' }
```

매개 변수 를 사용하여 `resolve` 및 `reject` 예상 오류를 처리할 수 있습니다.

**참고** : fetch 함수는 `Promise` 자체를 반환합니다!
```js
const url = 'https://jsonplaceholder.typicode.com/posts';
const getData = (url) => {
    return fetch(url);
}

getData(url)
    .then(data => data.json())
    .then(result => console.log(result));
```