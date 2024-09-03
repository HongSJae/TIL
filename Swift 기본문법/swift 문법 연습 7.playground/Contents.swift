import UIKit
import Foundation

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
//var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
//for item in myArray {
//    print("item: \(item)")
//}
//
////5보다 큰 것만
//for item in myArray where item > 5 {
//    print("item: \(item)")
//}
//
////짝수만
//for item in myArray where item % 2 == 0 {
//    print("item: \(item)")
//}
////홀수만
//for item in myArray where item % 2 != 0 {
//    print("item: \(item)")
//}

//MARK: - enum

//enum School {
////    case elementary
////    case middle
////    case high
//    case elementary, middle, high
//}
//
//let yourSchool = School.high
//print("yourSchool :", yourSchool)
//
//enum Grade: Int {
//    case first = 1
//    case second = 2
//}
//
//let yourGrade = Grade.second.rawValue
//print("yourGrade :", yourGrade)
//
//enum SchoolDetail {
//    case elementary(name: String)
//    case middle(name: String)
//    case high(name: String)
//
//    func getName() -> String {
//        switch self {
//        case .elementary(let name) :
//            return name
//        case let .middle(name) :
//            return name
//        case .high(let name) :
//            return name
//        }
//
//    }
//}
//
//let yourMiddleSchoolName = SchoolDetail.middle(name: "도마중학교")
//print("yourMiddleSchoolName:", yourMiddleSchoolName)//yourMiddleSchoolName: middle(name: "도마중학교")
//print("yourMiddleSchoolName:", yourMiddleSchoolName.getName())//yourMiddleSchoolName: 도마중학교

//MARK: - for

//레인지
//0...5 = 0,1,2,3,4,5

//0..<5 = 0,1,2,3,4

//for i in 0...5 {
//    print("index:", i)
//}
//
//print("--------------------")
//
//for i in 0..<5 {
//    print("index:", i)
//}
//
//print("--------------------")
//
//var randomInts:  [Int] = []
//
//for _ in 0..<25 {
//    let randomNumber = Int.random(in: 0...100)
//    randomInts.append( randomNumber)
//}
//
//print(randomInts)

//MARK: - Unwrap 옵셔널 변수

////옵셔널이란?
////값이 있는지 없는지 모른다
//var someVariable: Int? = nil
//
//if someVariable == nil {
//    someVariable = 90
//}
//
//print("someVariable:",someVariable)
//
////Unwrapping이란 랩 즉 감싸져있는 것을 벗기는.
//
//if let otherVariable = someVariable {
//    print("Unwraping!! otherVariable:", otherVariable)
//} else {
//    print("값이 없다 ... nil")
//}
//
//someVariable = nil
//
//// someVariable 이 비어있으면 즉 nil이면 기본값으로 ~을 넣겠다
//let myValue = someVariable ?? 10
//print("myValue:",myValue)
//
//var firstValue: Int? = 30
//var secondValue: Int? = 50
//
//print("firstValue:", firstValue)
//print("secondValue:", secondValue)
//
//unwrap(firstValue)
//unwrap(secondValue)
//
//func unwrap(_ parameter: Int?) {
//    print("unwrapping() - called ")
//    guard let UnwrappingValue = parameter else { return }
//    print("UnwrappingValue:",UnwrappingValue)
//}

//MARK: - class vs struct

////구조체
//struct YoutuberStruct {
//    var name: String
//    var SubscribersCount: Int
//}
//
//var devJeoung = YoutuberStruct(name: "정대리", SubscribersCount: 14600)
//var devJeoungClone = devJeoung
//
//print("Before - devJeoungClone.name:",devJeoungClone.name)
//
//devJeoungClone.name = "Faker"
//
//print("After - devJeoungClone.name:",devJeoungClone.name)
//print("After - devJeoung.name:",devJeoung.name)
//
//print("-----------------------------------------")
//
////클래스
//class Youtuber {
//    var name: String
//    var SubscribersCount: Int
//    init(name: String, SubscribersCount: Int) {
//        self.name = name
//        self.SubscribersCount = SubscribersCount
//    }
//}
//
//var JeoungDaeRi = Youtuber(name: "정대리",  : 14600)
//var JeoungDaeRiClone = JeoungDaeRi
//
//print("Before - devJeoungClone.name:",JeoungDaeRiClone.name)
//
//JeoungDaeRiClone.name = "Faker"
//
//print("After - JeoungDaeRiClone.name:",JeoungDaeRiClone.name)
//print("After - JeoungDaeRi.name:",JeoungDaeRi.name)

//MARK: - 프로퍼티 옵저버

//var myAge = 0 {
//    willSet {
//        print("값이 설정될 예정이다. myAge:",myAge)
//    }
//    didSet {
//        print("값이 설정됐다. myAge:",myAge)
//    }
//}
//
//myAge = 10
////값이 설정될 예정이다. myAge: 0
////값이 설정됐다. myAge: 10
//myAge = 50
////값이 설정될 예정이다. myAge: 0
////값이 설정됐다. myAge: 10
