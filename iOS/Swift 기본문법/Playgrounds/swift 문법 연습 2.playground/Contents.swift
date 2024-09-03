import UIKit

//MARK: - 조건문
//var isDarkMode: Bool = true
//
//if (isDarkMode == true) {
//    print("다크모드 입니다")
//}
//if (isDarkMode != true) {
//    print("다크모드가 아닙니다")
//}
//if isDarkMode == true {
//    print("다크모드 입니다")
//}
//if isDarkMode {
//    print("다크모드 입니다")
//}
//if !isDarkMode {
//    print("다크모드가 아닙니다")
//}
//
//var title: String = isDarkMode == true ? "다크모드 입니다" : "다크모드가 아닙니다"
//print("title: \(title)")

//MARK: - foreach 반복문

//콜렉션: 데이터를 모아둔 것
//배열, 셋, 딕셔너리, 튜플

//배열
var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray {
    print("item: \(item)")
}

//5보다 큰 것만
for item in myArray where item > 5 {
    print("item: \(item)")
}

//짝수만
for item in myArray where item % 2 == 0 {
    print("item: \(item)")
}
//홀수만
for item in myArray where item % 2 != 0 {
    print("item: \(item)")
}

