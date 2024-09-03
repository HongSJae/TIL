let letName ='승재';
letName = 'Seungjae';
console.log(letName);

function pastFunc(name) {
    return '옛날 안녕' + name;
}
console.log(pastFunc('영희'));

const currentFunc1 = (name) => {
    return `현재 안녕 ${name}`;
}
console.log(currentFunc1('영희')); 

const currentFunc2 = (name) => `축약 안녕 ${name}`;
console.log(currentFunc2('영희'));

// 옛날 문법
function myFunc1(name, age) {
    return '안녕' + name + '너의 이름은' + age + '살 이다!';
}

const myArr = [1, 2, 3 ,4, 5];

let pastArr = myArr.map(function(item) {
    return item;
});
console.log(pastArr);

let currentArr = myArr.map((item) => item);
console.log(currentArr);

let filterArr = myArr.filter((item) => item % 2 != 0);
console.log(filterArr)

let reduceArr = myArr.reduce((pre, cur) => pre + cur);
console.log(reduceArr)

function pastStringFunc(name, age) {
    return '안녕 '+name+' 너의 이름은 ' + age + '살 이다!';
}
console.log(pastStringFunc('승재', 19));

const currentStringFunc = (name, age) => {
    return `안녕 ${name}, 너의 나이는 ${age}살 이다!`;
}
console.log(currentStringFunc('승재', 19));

const noDefaultFunc = (name, age) => {
    return `안녕 ${name} 너의 나이는 ${age}살 이니?`;
};

console.log(noDefaultFunc('승재'));

const setDefaultFunc = (name, age = 19) => {
    return `안녕 ${name} 너의 나이는 ${age}살 이니?`;
};

console.log(setDefaultFunc('승재'));

const contacts = {
    famillyName: '홍',
    name: '승재',
    age: 19
}

let p_famillyName = contacts.famillyName;
let p_name = contacts.name;
let p_age = contacts.age;
console.log(p_famillyName)
console.log(p_name)
console.log(p_age)

let { c_famillyName, c_name, c_age } = contacts;
console.log(c_famillyName)
console.log(c_name)
console.log(c_age)

let { famillyName, name: username, age } = contacts;
console.log(username);

const arr = [1, 2, 3, 4];
let [value1, value2, value3] = arr;
console.log(value1);
console.log(value2);
console.log(value3);

// import { defatil, userProfile, getPosts } from './export';
// console.log(defatil('승재', 19))
// console.log(userProfile)
// console.log(getPosts)
// 왜 안되지

const myPromise = () => {
    return new Promise((resolve, reject) => {
        resolve('안녕하세요 Promise가 성공적으로 실행했습니다');
    });
}
console.log(myPromise());

const url = 'https://jsonplaceholder.typicode.com/posts';
const getData = (url) => {
    return fetch(url);
}

// getData(url)
//     .then(data => data.json())
//     .then(result => console.log(result));

const strArr = ['영희', '20', '열정적인 자바스크립트', '안녕', '지수', '어떻게 지내니?'];
const [val1, val2, val3, ...rest] = strArr;
const restFunc = (restOfArr) => {
    return restOfArr
        // .filter((item) => { return item })
        .join(" ");
}
console.log(restFunc(rest));

const spreadFunc = (...anArr) => {
    return anArr
}

console.log(spreadFunc(...strArr));

class myClass {
    constructor(name, age) {
        this.name = name
        this.age = age
    }

    sayHello() {
        console.log(`안녕 ${this.name}, 너의 나이는 ${age}살이다.`);
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