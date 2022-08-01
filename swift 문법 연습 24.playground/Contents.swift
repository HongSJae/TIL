import UIKit
import Foundation
import Darwin

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

//MARK: - 함수 매개변수 이름

//func myFunction(name: String) -> String {
//    return "안녕하세요. \(name)입니다."
//}
//
//print(myFunction(name: "홍승재"))
//
//
//func myFunctionSecond(with name: String) -> String {
//    return "안녕하세요. \(name)입니다."
//}
//
//print(myFunctionSecond(with: "민재원"))
//
//func myFunctionThird(_ name: String) -> String {
//    return "안녕하세요. \(name)입니다."
//}
//
//print(myFunctionThird("Reswo"))

//MARK: - 제네릭

//struct myArray<T> {
//
//    //제네릭을 담은 빈 배열
//    var element: [T] = []
//
//    init(_ elements: [T]) {
//        self.element = elements
//    }
//}
//
//struct Friend {
//    var name: String
//}
//
//struct coder {
//    var name: String
//}
//
//var myIntArray = myArray([1,2,3])
//print("myIntArray:",myIntArray)
//
//var myStringArray = myArray(["a", "b", "c"])
//print("myStringArray:",myStringArray)
//
//let Friend_1 = Friend(name: "승재")
//let Friend_2 = Friend(name: "승훈")
//let Friend_3 = Friend(name: "재원")
//
//var myFriendArray = myArray([Friend_1, Friend_2, Friend_3])
//print("myFriendArray:",myFriendArray)

//MARK: - 클로저
//
//let myName: String = {
//    return "홍승재"
//}()
//
//print("myName:",myName)
//
//let myRealName = { (name: String) -> String in
//    return "코드싸개 \(name)"
//}
//
//print("myRealName:",myRealName("홍승재"))
//
//let myRealNameLogic: (String) -> Void = { (name: String) in
//    print("코드싸개 \(name)")
//}
//myRealNameLogic("홍승재")

//MARK: - 매개변수로서 클로저

//// () -> Void
////func completion() {
////
////}
//
////complition이라는 클로저를 매개변수로 가지는
////매서드 정의
//func sayHi(completion: () -> Void) {
//    print("sayHi() - called")
//    sleep(2)
//    completion()
//}
//
////매서드 호출부분에서 이벤트 종류를 알 수 있다
//sayHi(completion: {
//    print("2초가 지났다.1")
//})
//
//sayHi() {
//    print("2초가 지났다.2")
//}
//
//sayHi {
//    print("2초가 지났다.3")
//}
//
//()
//func completion(userinput: String) {
//
//}
//
////매개변수로서 데이터를 반환하는 클로저
//func sayHiWithName(completion: (String) -> Void) {
//    print("sayHiWithName() - called")
//    sleep(1)
//    completion("ㅎㅇㅌㅂ")
//}
//
//sayHiWithName(completion: { (comment: String) in
//    print("1초 뒤에 그가 말했다. comment:", comment)
//})
//
//sayHiWithName(completion: { comment in
//    print("1초 뒤에 그가 말했다. comment:", comment)
//})
//
//sayHiWithName { comment in
//    print("1초 뒤에 그가 말했다. comment:", comment)
//}
//
//sayHiWithName {
//    print("1초 뒤에 그가 말했다. comment:", $0)
//}
//
////(String, String) -> Void
////func completion(first: String, second: String) {
////
////}
//
////매개변수로서 데이터를 여러 개 반환하는 클로저
//func sayHiWithFullName(completion: (String, String) -> Void) {
//    print("sayHiWithName() - called")
//    sleep(1)
//    completion("ㅎㅇㅌㅂ", "ㅂㅇㅌㅂ")
//}
//
//sayHiWithFullName { first, second in
//    print("first:",first)
//    print("second:",second)
//}
//
//sayHiWithFullName {
//    print("first:",$0)
//    print("second:",$1)
//}
//
//func sayHiOptional(completion: (() -> Void)? = nil) {
//    print("sayHiOptional() - called")
//    sleep(2)
//    completion?()
//}
//
//sayHiOptional()
//
//sayHiOptional(completion: {
//    print("2초 지남?!")
//})
//
//// (Int) -> (String)
////func transform(Num: Int) -> String {
////    return "Num: \(Num)"
////}
//
//var MyNumbers: [Int] = [0, 1, 2, 3, 4, 5]
//
//var transformedNumbers1 = MyNumbers.map { aNumber in
//    return "숫자: \(aNumber)"
//}
//
//var transformedNumbers2 = MyNumbers.map { (aNumber: Int) -> String in
//    return "숫자: \(aNumber)"
//}
//
//var transformedNumbers3 = MyNumbers.map {
//    return "숫자: \($0)"
//}

//MARK: - 객체 생성자, 해제자

//class MyFriend {
//
//    var name: String
//
//    init(_ name: String = "이름없음") {
//        self.name = name
//        print("init() myFriend가 메모리에 올라갔다 -", self.name)
//    }
//    deinit {
//        print("deinit() 메모리에서 사라짐 -", self.name)
//    }
//
//    //deinit 검증을 위해 작성
//    var calledTimes = 0
//    let MAX_TIMES = 5
//
//    static var instancesOfSelf = [MyFriend()]
//    class func destroySelf(object: MyFriend) {
//        instancesOfSelf = instancesOfSelf.filter{ (aFriend: MyFriend) in
//            aFriend !== object
//        }
//    }
//
//    func call() {
//        calledTimes += 1
//        print("called",calledTimes)
//        if calledTimes > MAX_TIMES {
//            MyFriend.destroySelf(object: self)
//        }
//    }
//}
//
//let myFriend = MyFriend("민재원")
//let aFriend = MyFriend()
//
////Unmanaged.passUnretained(객체).toOpaque()
////로 해당 객체의 메모리 주소를 프린트할 수 있다.
//
//let anObjectMemoryAdress = Unmanaged.passUnretained(aFriend).toOpaque()
//let secondMemoryAdress = Unmanaged.passUnretained(myFriend).toOpaque()
//
//print(anObjectMemoryAdress)
//print(secondMemoryAdress)
//
//weak var aFriendToBeDestroyed = MyFriend("홍승재")
//
//if aFriendToBeDestroyed != nil {
//    aFriendToBeDestroyed!.call()
//} else {
//    print("객체가 더 이상 메모리에 없습니다.")
//}

//MARK: - 상속

//class Friend {
//
//    var name: String
//
//    init(_ name: String) {
//        self.name = name
//    }
//
//    func sayHi() {
//        print("안녕 나는 \(self.name)이라고해")
//    }
//}
//
//class BestFriend: Friend {
//    //override로 부모의 메서드를 가져왔다.
//    override init(_ name: String) {
//        //super로 부모의 메서드를 사용
//        super.init("나의 친구 " + name)
//    }
//
//    override func sayHi() {
//        super.sayHi()
//    }
//}
//
//let myFriend = Friend("민재원")
//
//myFriend.sayHi()
//
//let myBestFriend = BestFriend("iOS")
//
//myBestFriend.sayHi()
//
//myBestFriend.name

//MARK: - 딕셔너리

////키 : 값
//
//var myFriends = ["BF" : "민재원",
//                 "Major" : "Android"]
//
//var myBestFriend = myFriends["BF"]
//
//let myMajor = myFriends["Major"]
//
//let youtubeFriend = myFriends["YF", default: "친구없음"]
//
//myFriends["BF"] = "승훈"
//
//let myBF = myFriends["BF"]
//
//myFriends["newFriend"] = "근우"
//
//let newFriend = myFriends["newFriend"]
//
//myFriends.updateValue("용수", forKey: "highschoolFriend")
//
//let highschoolFriend = myFriends["highschoolFriend"]
//
//myFriends.updateValue("iOS", forKey: "Major")
//
//let myMajorChanged = myFriends["Major"]
//
////let emptyDictionary = [String : Int]()
//let emptyDictionary: [String : Int] = [:]
//
//let myEmptyDictionary: [String : Int] = Dictionary<String, Int>()
//
//myFriends.count
//
//for item in myFriends {
//    print("item:",item)
//}

//MARK: - 파이널 클래스

////final 은 상속 불가
//
//final class Friend {
//
//    var name: String
//
//    init(_ name: String) {
//        self.name = name
//    }
//}
//
//class BestFriend: Friend {
//    override init(_ name: String) {
//        super.init("불알친구 " + name)
//    }
//}
//
//let myFriend = Friend("철수")
//
//let myBestFriend = BestFriend("영희")

//MARK: - 매개변수 inout

//func sayName(_ name: String) {
////    name = "개발하는 " + name 변경불가
//    print("안녕 나는 \(name) 라고 해")
//}
//
//func sayHi(_ name: inout String) {
//    name = "개발하는 " + name
//    print("안녕 나는 \(name) 라고 해")
//}
//
//sayName("홍승재")
//
//var name = "홍승재"
//
//sayHi(&name)

//MARK: - 에러 error
//
//enum MismatchError: Error {
//    case nameMismatch
//    case numberMismatch
//}
//
////에러를 던지는 메서드
//func guessMyName(name input: String) throws {
//    print("guessMyname() - called")
//    if input != "홍승재" {
//        print("땡 ❌")
//        throw MismatchError.nameMismatch
//        //return
//    }
//    print("정답 ⭕️")
//}
//
//
///// 번호를 맞춘다
///// - Parameter input: 사용자 숫자 입력
///// - Returns: 맞췄는지 여부
//func guessMyNumber(number input: Int) throws -> Bool {
//    print("guessMyNumber() - called")
//    if input != 10 {
//        print("땡 ❌")
//        throw MismatchError.numberMismatch
//        //return
//    }
//    print("정답 ⭕️")
//    return true
//}
//
//
//////에러가 있더라도 처리하지 않겠다
////try? guessMyName(name: "김병만")
//
//do {
//    try guessMyName(name: "홍승제")
//} catch {
//    print("잡은 에러:",error)
//}
//
//do {
//    let receivedValue = try guessMyNumber(number: 10)
//} catch {
//    print("잡은 에러:",error)
//}

//MARK: - 스트럭트 mutating
//
//class Friend {
//    
//    var name: String
//    
//    func changeName(newName: String) {
//        self.name = newName
//    }
//    
//    init(_ name: String) {
//        self.name = name
//    }
//}
//
//var myFriend = Friend("홍승재")
//
//myFriend.changeName(newName: "Reswo._.")
//
//myFriend.name
//
//struct BestFriend {
//    
//    var name: String
//    
//    mutating func changeName(newName: String) {
//        self.name = newName
////        print("newName:",newName)
//    }
//
////    init(_ name: String) {
////        self.name = name
////    }
//}
//
//var myBestFriend = BestFriend(name: "민재원")
//
//myBestFriend.changeName(newName: "롤창재원")

//MARK: - Set

////배열과 비슷한 Set
////중복 값을 넣을 수 없다.
////순서가 정해져 있지 않으며 순서가 매번 다르다
//
//var myNumberSet: Set<Int> = Set<Int>()
//
//myNumberSet.insert(1)
//myNumberSet.insert(2)
//myNumberSet.insert(2)
//myNumberSet.insert(3)
//myNumberSet.insert(3)
//
//myNumberSet.count
//myNumberSet
//
//for Num in myNumberSet {
//    print("Num:",Num)
//}
//
//var myFriends: Set<String> = ["근우", "승훈", "용수"]
//var myBestFriends: [String] = ["근우", "승훈", "용수"]
//
//myFriends.contains("근우")
//myBestFriends.contains("근우")
//
//if let indexToRemove = myFriends.firstIndex(of: "승훈") {
//    print("indexToRemove:",indexToRemove)
//    myFriends.remove(at: indexToRemove)
//}
//
//myFriends

//MARK: - 스트럭트 메서드

//struct Friend {
//
//    var age: Int
//    var name: String
//
//    func sayHello() -> String {
//        print("sayHello() - called")
//        return "저는 \(age)살 \(name)입니다."
//    }
//}
//
//var myFriend = Friend(age: 17, name: "홍승재")
//print(myFriend.sayHello())

//MARK: - 프로토콜
//
//// 약속
///// ~ delegate
///// ~able, ~ing
//
////프로토콜로 약속
//protocol Naming {
//    //우리는 이런 변수를 가지고 있을 것이라고 약속
//    var name: String { get set }
//    //우리는 이런 메서드를 가지고 있을 것이라고 약속
//    func getName() -> String
//}
//
//struct Friend: Naming {
//    var name: String
//
//    func getName() -> String {
//        return "내 친구 " + self.name
//    }
//}
//
//var myFriend = Friend(name: "민재원")
//print(myFriend.getName())

//MARK: - 프로토콜 상속
//
//protocol Naming {
//    var name: String { get set }
//    func getName() -> String
//}
//
//protocol Aging {
//    var age: Int { get set }
//}
//
//protocol UserNotifiable: Naming, Aging {
//
//}
//
//class myBestFriend: UserNotifiable {
//    var name: String
//
//    func getName() -> String {
//        <#code#>
//    }
//
//    var age: Int
//
//
//}
//
//struct myFriend: UserNotifiable {
//    var name: String
//
//    func getName() -> String {
//        <#code#>
//    }
//
//    var age: Int
//
//
//}

//MARK: - 프로토콜 확장

//protocol Naming {
//    var lastname: String { get set }
//    var firstname: String { get set }
//    func getName() -> String
//}
//
//extension Naming {
//    func getFullname() -> String {
//        self.firstname + " " + self.lastname
//    }
//}
//
//struct Friend: Naming {
//    var lastname: String
//
//    var firstname: String
//
//    func getName() -> String {
//        return self.lastname
//    }
//}
//
//let myFriend = Friend(lastname: "홍", firstname: "승재")
//
//myFriend.getName()
//myFriend.getFullname()

//MARK: - 프로토콜 associatedType

protocol PetHaving {
    associatedtype T
    var pets: [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct Friend: PetHaving {
    var pets: [Animal] = []
}

struct Family: PetHaving {
    var pets: [String] = []
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.dog)
myFriend.gotNewPet(Animal.cat)
myFriend.pets

var myFamily = Family()

myFamily.gotNewPet("fish")
myFamily.gotNewPet("hamster")
myFamily.gotNewPet("snake")
myFamily.pets
