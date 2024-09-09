//index.js
const express = require('express') //③번 단계에서 다운받았던 express 모듈을 가져온다.
const app = express() //가져온 express 모듈의 function을 이용해서 새로운 express 앱을 만든다. 🔥
const port = 5000 //포트는 4000번 해도되고, 5000번 해도 된다. -> 이번엔 5000번 포트를 백 서버로 두겠다.

app.get('/', (req, res) => { //express 앱(app)을 넣고, root directory에 오면, 
  res.send('이렇게 하면 일반 주소고') //"Hello World!" 를 출력되게 해준다.
})

app.get('/login', (req, res) => {
    res.send('이렇게하면 로그인창임?')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
}) //포트 5000번에서 이 앱을 실행한다.