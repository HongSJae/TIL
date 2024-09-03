# Import and export(가져오기 및 내보내기)
> JS 응용 프로그램에서 `import` 및 `export`를 사용하면 성능이 향상됩니다. 이를 통해 별도의 재사용 가능한 구성요소를 작성할 수 있습니다.

예를 들어 두개의 파일이 있습니다. 
<br>첫번째 파일은 `import.js`, 두번째 파일은 `export.js`입니다.

`export.js`에서 `hello()` 함수를 내보낼 예정입니다.
```js
// ES6
export default function hello(name) {
    return `안녕 ${name}`;
}
```
그리고 `import.js`에서 이 기능을 사용하려면 `import`만 사용합니다.
```js
import { hello, userProfile, getPosts } from './export';

console.log(hello('승재'));
console.log(userProfile);
console.log(getPosts);
```