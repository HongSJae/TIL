# 많이 사용하는 HTML 요소

<table>
    <thead>
        <tr>
            <th>태그</th>
            <th>설명</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>&lt;div&gt;</code></td>
            <td>Division</td>
        </tr>
        <tr>
            <td><code>&lt;span&gt;</code></td>
            <td>Span</td>
        </tr>
        <tr>
            <td><code>&lt;img&gt;</code></td>
            <td>Image</td>
        </tr>
        <tr>
            <td><code>&lt;a&gt;</code></td>
            <td>Link</td>
        </tr>
        <tr>
            <td><code>&lt;ul&gt; &amp; &lt;li&gt;</code></td>
            <td>Unordered List &amp; List Item</td>
        </tr>
        <tr>
            <td><code>&lt;input&gt;</code></td>
            <td>Input(Text, Radio, Checkbox</td>
        </tr>
        <tr>
            <td><code>&lt;textarea&gt;</code></td>
            <td>Multi-line Text Input</td>
        </tr>
        <tr>
            <td><code>&lt;button&gt;</code></td>
            <td>Button</td>
        </tr>
    </tbody>
</table>

## div & span

`div`: 한줄 차지
<br>
`span`: 줄바꿈이 되지 않는다

```html
<div>div 태그는 한 줄을 차지한다</div>
<div>division 2</div>
<span>span 태그는 줄바꿈이 되지 않는다</span>
<span>span2</span>
<span>span3</span>
<div>division 3</div>
```

<div>div 태그는 한 줄을 차지한다</div>
<div>division 2</div>
<span>span 태그는 줄바꿈이 되지 않는다</span>
<span>span2</span>
<span>span3</span>
<div>division 3</div>

## img

`img`: 이미지를 삽입할 때 사용한다.

- `alt`: 대체 text

```html
<img
  src="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png"
  alt="daum"
/>
```

<img
  src="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png"
  alt="daum"
/>

## a

`a`: 하이퍼 링크를 걸어줌. 보통 href와 같이 사용

- target 속성 `target="_blank"`를 사용하여 새 탭을 열 수 있다.

```html
<a href="http://github.com/HongSJae" target="_blank">HongSJae</a>
```

<a href="http://github.com/HongSJae" target="_blank">HongSJae</a>

## ol & ul

`ol`: 순서가 있는 리스트에서 사용된다.
`ul`: 순서가 없는 리스트에서 사용된다.

- `ol`과 `ul`은 `li`과 한 쌍이다.

```html
<ol>
  <li>리스트1</li>
  <li>리스트2</li>
  <li>리스트3</li>
  <ol>
    <li>리스트3-1</li>
    <li>리스트3-2</li>
    <li>리스트3-3</li>
  </ol>
</ol>

<ul>
  <li>리스트1</li>
  <li>리스트2</li>
  <li>리스트3</li>
  <ul>
    <li>리스트3-1</li>
    <li>리스트3-2</li>
    <li>리스트3-3</li>
  </ul>
</ul>
```

<ol>
  <li>리스트1</li>
  <li>리스트2</li>
  <li>리스트3</li>
  <ol>
    <li>리스트3-1</li>
    <li>리스트3-2</li>
    <li>리스트3-3</li>
  </ol>
</ol>

<ul>
  <li>리스트1</li>
  <li>리스트2</li>
  <li>리스트3</li>
  <ul>
    <li>리스트3-1</li>
    <li>리스트3-2</li>
    <li>리스트3-3</li>
  </ul>
</ul>

## input

> 닫는 태그가 필요 없다.

### checkbox

`lable`요소에 `for`과 `input`의 `id`를 연결하여 사용한다.

```html
<input id="todo_workout" type="checkbox" />
<label for="todo_workout">운동</label>

<input id="todo_study" type="checkbox" />
<label for="todo_study">공부</label>

<input id="todo_drink" type="checkbox" />
<label for="todo_drink">물 마시기</label>

<input id="todo_shopping" type="checkbox" />
<label for="todo_shopping">장 보기</label>

<input id="todo_play" type="checkbox" />
<label for="todo_play">놀기</label>
```

<input id="todo_workout" type="checkbox" />
<label for="todo_workout">운동</label>

<input id="todo_study" type="checkbox" />
<label for="todo_study">공부</label>

<input id="todo_drink" type="checkbox" />
<label for="todo_drink">물 마시기</label>

<input id="todo_shopping" type="checkbox" />
<label for="todo_shopping">장 보기</label>

<input id="todo_play" type="checkbox" />
<label for="todo_play">놀기</label>

### radio
중복선택을 막기위해 `name`요소를 일치시켜준다
```html
<input id="football" type="radio" name="sports">
<label for="football">축구</label>
<input id="baseball" type="radio" name="sports">
<label for="baseball">야구</label>
<input id="basketball" type="radio" name="sports">
<label for="basketball">농구</label>
<input id="tennis" type="radio" name="sports">
<label for="tennis">테니스</label>
```

<input id="football" type="radio" name="sports">
<label for="football">축구</label>
<input id="baseball" type="radio" name="sports">
<label for="baseball">야구</label>
<input id="basketball" type="radio" name="sports">
<label for="basketball">농구</label>
<input id="tennis" type="radio" name="sports">
<label for="tennis">테니스</label>

### 나머지 type
>`text`, `email`, `password`, `date`, `time`, `color`, `file`, `number`
```html
<label for="text">text</label>
<input type="text" id="text" placeholder="이름을 입력하세요"><br>
<label for="email">email</label>
<input type="email" id="email" placeholder="email@example.com"><br>
<label for="password">password</label>
<input type="password" id="password"><br>
<label for="date">date</label>
<input type="date" id="date"><br>
<label for="time">time</label>
<input type="time" id="time"><br>
<label for="color">color</label>
<input type="color" id="color"><br>
<label for="file">file</label>
<input type="file" id="file"><br>
<label for="number">number</label>
<input type="number" id="number" max="100" min="0"><br>
```
<label for="text">text</label>
<input type="text" id="text" placeholder="이름을 입력하세요"><br>
<label for="text">email</label>
<input type="email" id="email" placeholder="email@example.com"><br>
<label for="password">password</label>
<input type="password" id="password"><br>
<label for="date">date</label>
<input type="date" id="date"><br>
<label for="time">time</label>
<input type="time" id="time"><br>
<label for="color">color</label>
<input type="color" id="color"><br>
<label for="file">file</label>
<input type="file" id="file"><br>
<label for="number">number</label>
<input type="number" id="number" max="100" min="0"><br>

## textarea
해당 요소는 줄바꿈이 가능한(여러줄) 입력 폼입니다.
```html
<textarea name="content" id="content">기본 입력자</textarea>
```
<textarea name="content" id="content">기본 입력자</textarea>

# button
클릭할 수 있는 버튼을 만듭니다
```html
<button>클릭</button>
```
<button>클릭</button>