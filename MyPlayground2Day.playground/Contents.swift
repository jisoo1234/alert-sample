var name1:String
var age1:Int

name1 = "jisoo"
age1 = 30

var name2:String
var age2:Int

name2 = "mimi"
age2 = 22

/*이런식으로 변수선언하고 값 할당해서 사용하면 넘나 관리가 힘들겠지
 구조화 시켜서 관리하고자 하는게 스트력처와 클래스임*/

/****************구조체***************/
//구조체를 하나 만들고 (구조체안에는 변수(=프로퍼티)랑 함수(=메소드)만 들어간다)
struct Size{
    var width:Float
    var height:Float
    
    func description() {
        print("width: \(self.width), height:\(self.height)")
    }
}

//인스턴스만들기 (구조체의 객체를 만드는거야)
var size = Size(width: 100, height: 100 )
var newSize = size // 그 변수를 또다른 변수에 넣어줄수있어

// 이런식으로 불러서 사용할 수 있지
size.width = 200
size.height
size.description()

//newSize = Size(width:10, height:10)


/****************클래스***************/

class Person {
    
    //? 지우면 에러남, 옵셔널 타입으로 선언해줘야 값이 없어도 컴파일 에러가 안나는거야
    var name:String?
    var email:String?
    var age:Int?
    
    func run() {
        print("run")
    }
}

let person = Person()
person.name = "jisoo"
person.age = 29
person.email = "1234milejs@gmail.com"


/* 옵셔널 타입 안하고 초기화함수 써서 하는 방법*/
//클래스 탑입 정의
class Person2 {
    var name:String
    var email:String
    var age:Int
    
    //초기화함수 선언
    init(newname:String, email:String, age:Int) {
        self.name = newname   //매개변수로 받은 값을 프로퍼티에 할당하라는거지
        self.email = email
        self.age = age
    }
    
    func run() {
        print("run")
    }
}
//객체만들기
var personex2 = Person2(newname: "jisoo", email: "1234milejs@gmail.com", age: 29)
let personex2_1 = Person2(newname: "kiki", email: "kiki1111@gmail.com", age: 20)

//personex2_1 이거는 let으로 만들었지만, 값을 변경해도 되네
//클래스는 변수자체가 값을 표현하는게 아니라 위치값을(참조값) 표현하고 있기 때문에 let으로해도 변경가능한거야
//하지만 구조체는 값 자체라서 변경 불가함
personex2_1.age = 46
//dump는 프린트랑 비슷한거야
dump(personex2_1)




import Foundation
struct Person3 {
    //저장 프로퍼티 (lazy 앞에 쓰면 지연저장프로퍼티:나중에 진짜 쓸때 메모리상에 올라오는거)
    var firstName:String
    var lastName:String
    
    //연산 프로퍼티
    var fullName:String{
        get{ //값을 읽을때
            return firstName + " " + lastName
        }
        set{ // 값을 전달할때
            let index = newValue.index(newValue.startIndex, offsetBy:1) //인덱스를 1번 띄어진 값으로 잡겠다는거지
            self.lastName = newValue.substring(to: index)//인덱스 0번부터 1번까지
            self.firstName = newValue.substring(from:index)
        }
    }
    
}

var per1 = Person3(firstName: "지수", lastName: "박")
dump(per1)

per1.fullName = "박보검"  // 이값은 set으로 넘어가지(newvalue로 간다)
per1.firstName
per1.lastName
dump(per1)

/*프로퍼티 옵저버(감시자) 사용*/
struct Person4 {
    var age:Int? {  //옵셔널된 연산프로퍼티
        willSet {  // 값이할당되기 직전에 호출되는 코드블럭
            if newValue! > 18 {
             print("성인이다")
            } else {
             print("어린이다")
            }
        }
        didSet {  //값이 할당되고나서, 할당되기전의 값을 가지고 뭔가 할때 사용
            if oldValue! > 18 {
                print("#성인이다#")
            } else {
                print("#어린이다#")
                age = nil
            }
        }
    }
}

var p1 = Person4(age: 10)
p1.age = 18


/*스트럭처*/
// 타입프로퍼티 쓸때 스트럭처는 무조건 static만 씀
struct Size2 {
    static var maxwidth:Int = 800
    static var maxheight:Int = 600
    
    static var maxpixel:Int{
        return maxwidth * maxheight
    }
    
}
var max = Size2.maxpixel
print("\(max)")

/*클래스*/
// 타입프로퍼티 쓸때 클래스는  static 붙여서 써도 되고 class로도 선언할수있어
class Grade{
    static let max:Float = 100
    
    // 클래스의 연산 프로퍼티에만 가능. 상속 가능
    // 연산 프로퍼티에는 let사용불가
    class  var min:Float {
        return max * 0.2
    }

}
let maxgrade = Grade.max
let mingrade = Grade.min
print("\(maxgrade)")
print("\(mingrade)")


class Person5{
    //저장프로퍼티 선언
    //묵시적 옵셔널 언맵핑 ! (느낌표붙이면 나중에 nil값 들어가면 에러남)
    var name:String!
    var age:Int!
    
    func jump() {
        if self.age > 30 {
            print("\(self.name)님 30cm 점프")
        }else {
            print("\(self.name)님 1m 점프")
        }
    }
    
    func run() {
        if self.age > 30 {
            print("\(self.name)님 느려")
        }else {
            print("\(self.name)님 빠름")
        }
    }
    
    static let maxAge = 100
    
    
    // 타입메소드로 선언
    class func calcBMI(height:Int, weight:Int) -> String {
        let result = Float(weight) / (Float(height * height) * 0.0001)
        let returnMsg:String
        print(result)
        
        
        if result >= 24.9 {
            returnMsg = "비만"
        } else if result >= 22.9 && result <= 24.9 {
            returnMsg = "과체중"
        } else if result >= 18.5 && result <= 22.9{
            returnMsg = "정상"
        } else if result < 18.5 {
            returnMsg = "저체중"
        } else {
            returnMsg = "에러"
        }
        return returnMsg
    }
}

let p5 = Person5()
p5.age = 30
p5.name = "홍길동"

p5.run()
p5.jump()

let bmi = Person5.calcBMI(height: 170, weight: 50)
print(bmi)


