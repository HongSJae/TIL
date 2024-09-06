# 기본적인 셀렉터 (selector)

## id 사용하기

- id는 한 문서에 하나의 요소에 사용할 때 사용한다
- `#`기호 사용

```html
<!-- HTML -->
<h4 id="navigation-title">안녕하세요, 반갑습니다.</h4>
```

```css
/* CSS */
#navigation-title {
  color: red;
}
```

<style type='text/css'>
  [id*="navigation-title"] { color: red; }
</style>
<h4 id="navigation-title">안녕하세요, 반갑습니다.</h4>

## class 사용하기

- 여러 요소에 적용하기위해 사용된다.
- `.`기호 사용

```html
<!-- HTML -->
<ul>
  <li class="item">Home</li>
  <li class="item">Mac</li>
  <li class="item">iPhone</li>
  <li class="item">iPad</li>
</ul>
```

```css
/* CSS */
.item {
  text-decoration: underline;
}
```

<style type='text/css'>
  [class*="item"] { text-decoration: underline; }
</style>

<ul>
  <li class="item">Home</li>
  <li class="item">Mac</li>
  <li class="item">iPhone</li>
  <li class="item">iPad</li>
</ul>

# 기본 셀렉터
## 전체 셀렉터
- 전체 셀렉터는 문서의 모든 요소를 선택한다
- `*`를 사용한다.
``` css
* { }
```

## 태그 셀렉터
태그 셀렉터는 같은 태그명을 가진 모든 요소를 선택한다.(복수선택 가능)
```css
h1 { }
div { }
selection, h1 { }
```

## ID 셀렉터
위에 CSS 예시처럼 `#`을 사용해 선택한다
``` css
#anyID { }
```

## class 셀렉터
위에 CSS 예시처럼 `.`을 사용해 선택한다
``` css
.anyClass { }
```

## attribute 셀렉터
같은 속성을 가진 요소를 선택한다
``` css
a[href] { }
p[id="only"] { }
p[class~="out"] { }
p[class|="out"] { }
section[id^="sect"] { }
div[class$="2"] { }
div[class*="w"] { }
```

##  자식 / 후손 / 형재 셀렉터
### 자식 셀렉터
- 자식 셀렉터는 첫 번째로 입력한 요소의 바로 아래 자식인 요소를 선택한다.
- `부모 > 자식 { }` 으로 선택


아래 예시의 경우 `<header>` 요소 바로 아래에 있는 두 개의 `<p>` 요소는 선택되지만, `<span>` 요소의 자식인 `<p>` 요소는 선택되지 않는다. (후손 셀렉터와의 차이를 반드시 알고 있어야 한다.)


``` css
/* CSS */
header > p { }
```

``` html
<!-- HTML -->
<header>
	<p> <!-- 선택 -->
		<span>
			<p></p>
		</span>
	</p>
	<p> <!-- 선택 -->
		<span>
			<p></p>
		</span>
	</p>
</header>
```

### 후손 셀렉터
- 후손 셀렉터는 첫 번째로 입력한 요소의 후손을 선택한다.
- `부모 자식 { }` 으로 선택

아래 예시의 경우 `<header>` 요소의 자식인 `<p> `요소뿐 아니라, `<header>` 요소의 자식의 자식인 `<p>` 요소까지 모두 선택된다. (자식 셀렉터와의 차이점을 반드시 알고 있어야 한다.)

``` css
/* CSS */
header p { }
```
``` html
<!-- HTML -->
<header>
	<p><!-- 선택 -->
		<span>
			<p><!-- !!선택!! -->
			</p>
		</span>
	</p>
	<p><!-- 선택 -->
		<span>
			<p><!-- !!선택!! -->
			</p>
		</span>
	</p>
</header>
```

### 형제 셀렉터
형제 셀렉터는 같은 부모 요소를 공유하면서, 첫 번째 입력한 요소 뒤에 오는 두 번째 입력한 요소를 모두 선택한다. 아래 예시의 경우 `<section>` 요소 뒤에 있는 세 개의 `<p>` 요소를 모두 선택한다.
``` css
/* CSS */
section ~ p { }
```
``` html
<!-- HTML -->
<header>
	<section></section>
	<p></p> <!-- 선택 -->
	<p></p> <!-- 선택 -->
	<p></p> <!-- 선택 -->
</header>
```

### 인접 형제 셀렉터
인접 형제 셀렉터는 같은 부모 요소를 공유하면서, 첫 번째 입력한 요소 바로 뒤에 오는 두 번째 입력한 요소를 선택한다. 예시의 경우 `<section>` 요소 뒤에 있는 세 개의 `<p>` 요소 중 첫 번째 `<p>` 요소를 선택한다.

``` css
/* CSS */
section + p { }
```
``` html
<!-- HTML -->
<header>
	<section></section>
	<p></p> <!-- 선택 -->
	<p></p>
	<p></p>
</header>
```

## 기타 셀렉터
### 가상 클래스 셀렉터
가상 클래스는 요소의 상태 정보에 기반해 요소를 선택한다.

```css 
:link { } /*사용자가 방문하지 않은 <a>요소를 선택한다.*/
a:visited { } /*사용자가 방문한 <a>요소를 선택한다. */
a:hover { } /* 마우스를 요소 위에 올렸을 때 선택한다. */
a:active { } /* 활성화 된(클릭된) 상태일 때 선택한다. */
a:focus { } /* 포커스가 들어와 있을 때 선택한다. */
```

### UI 요소 상태 셀렉터
``` css
input:checked + span { } /*체크 상태일 때 선택한다. */
input:enabled + span { } /*사용 가능한 상태일 때 선택한다. */
input:disabled + span { } /*사용 불가능한 상태일 때 선택한다. */
```

### 구조 가상 클래스 셀렉터

``` css
p:first-child { }
ul > li:last-child { }
ul > li:nth-child(2n) { }
section > p:nth-child(2n+1) { }
ul > li:first-child { }
li:last-child { }
div > div:nth-child(4) { }
div:nth-last-child(2) { }
section > p:nth-last-child(2n + 1) { }
p:first-of-type { }
div:last-of-type { }
ul:nth-of-type(2) { }
p:nth-last-of-type(1) { }
```

### 부정 셀렉터
``` css
input:not([type="password"]) { }
div:not(:nth-of-type(2)) { }
```

### 정합성 확인 셀렉터
``` css
input[type="text"]:valid { }
input[type="text"]:invalid { }
```