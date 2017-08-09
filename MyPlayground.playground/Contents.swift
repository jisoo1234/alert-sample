
var myAge = 29

var yourAge : Int


let myName:String

yourAge = 39
myName = "jisoo"

yourAge = 22

//myName = "kiki"

//var yourName

var myInt:Int = 999999999

var ss:Int8 = 127
var ss1:Int16 = 32767
var ss2:Int32 = 11111111
var ss3:Int64 = 123456789123456


print(ss)

var dd1:UInt = 123456

var dd2:Float = 5.1234567

var dd3:Double = 5.123456789456


var dd4:Bool = true

var dd5:String = "hihihihi"

dd5.characters
dd5.hasPrefix("dd")  // 변수가 ""로 시작되냐에 따라 t/f

type(of: myAge)
type(of: myName)
type(of: dd4)
type(of: dd3)

var ff1:Int
ff1 = 29
type(of: ff1)


var ff2:Double
ff2 = 29.0
type(of: ff2)

var ff3:String
ff3 = "kakakak"
type(of: ff3)

var ff4:Character
ff4 = "g"
type(of: ff4)



var gg1 = 18
var gg2  = "9"

var gg3 = String(gg1)+gg2

var gg4 = gg1 + Int(gg2)!

//이미 타입이 정수형인경우는 스트링으로 당연히 바뀔수있지만 스트링의 경우는 내가 저기에 숫자를 넣어서 그렇지
// 문자넣으면 오류나가 나지. 이럴때 (안되는경우가있는애들)은 뒤에 느낌표 붙여줘야해

var kk1:String="지수"
var kk2:Int = 29
var kk3:String="\(kk2)살 \(kk1)님 웰컴웰컴"
print(kk3)


for i in 2..<5 {
print(i)
}


for _ in 1...3{
    print("hihi")
}

print("-------------------")

for i in 1...3{
    for j in 1...3{
    print("*")
    }
}

print("-------------------")

for i in 1...9{
    print("2*\(i) = \(2*i)")
}

print("-------------------")

for i in 2...9{
    
    for j in 1...9 {
    print("\(i)*\(j) = \(i*j)")
    }
    
    
}
print("-------------------")

var a=2
while a<10 {
    a=a+1
    print("A = \(a)")
}

print("-------------------")

var b=10
repeat {
    b=b+1
    print("B=\(b)")
} while  b<10


print("-------------------")

var a1 = 10
var b1 = 20

if a1<b1{
    print("ttt")
}

print("-------------------")

var a2 = 10
var b2 = 20

if a2 > b2{
 print("ttt")
} else {
    print("aaa")
}


print("-------------------")

var name = "jisoo"
var age = 29
if name == "jisoo" {
    if age > 20
    {
     print("성인이군")
    } else {
     print("어린이근")
    }
} else{
print("jisoo 아님")
}

print("-------------------")


let opt = 2

switch opt {
case 0:
    print("0")
case 1:
    print("1")
case 2:
    print("2")
default:
     print("nono")
}

print("-------------------")

let ename = "jisoo"
switch ename {
case "jisoo":
    fallthrough
case "JISOO":
    fallthrough
case "Jisoo":
    print("내이름은 jisoo")
default:
    print("who are you")

}

print("-------------------")

let book = "해리포터"
switch book {
case "해리포터","치킨먹방":
    print("이거닷")
case "살인자의 기억법":
    print("이거아니다")
default:
    print("who are you")
    
}

print("--------튜플-----------")

var p1 = ("jisoo", 29)
print("\(p1)")

switch p1 {
case let (name, 20):  // name이라는 상수는 뭐가 되었던건에  name에 넣고 뒤에 숫자만 비교하겠다는거임
    print("29세 \(name)입니다")
default:
    print("who are you")
}

print("--------범위연산자-----------")

var heigh = 170
switch heigh {
case 0 ..< 170:
    print("170미만")
case 170 ..< 180:
    print("180미만")
default:
    print("who are you")
}


print("-------------------")

var p2 = ("jisoo", 29)

switch p2 {
case let (name, age) where age >= 20:
    print("20대 \(name)")
case let (name, age) where age >= 10:
    print("10대 \(name)")
default:
    print("who are you")
}

