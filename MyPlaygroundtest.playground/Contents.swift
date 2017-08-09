

let anyVal = ("jisoo",29,161, "010-8670-0716")
anyVal.0
anyVal.1
anyVal.2
anyVal.3


let person1:(String, Int, String) = ("jisoo",29,"010-8670-0716")

/*
//배열 선언
var arr1:Array<Sting>
var arr2:[String]

//선언된 배열 초기화
arr1 = Array()
arr1 = Araay<String>()

arr2 = [String]()
arr2 = []

//선언과 초기화를 한번에
var arr3 = Array<String>()
var arr4 = [String]()

 */
 
 
// 배열에 아이템 추가
var fruits = ["복숭아","사과","멜론"]

print("과일의 수는 \(fruits.count)개")
fruits.append("망고")
print("과일의 수는 \(fruits.count)개")

fruits.insert("수박", at: 0) // at는 들어갈위치임 0번 인덱스에 들어가라는거임
fruits.append(contentsOf: ["바나나","딸기"])

for i in fruits {
    print(i)
}

if fruits.isEmpty{
 print("과일이 없습니다")
}

print("-------------------------")

fruits[0] = "%%%%"
fruits[1...2] = ["####","$$$$"]
fruits
fruits[4...6] = ["----"]

print("\(fruits)")

print("-------------------------")

//dictionary선언
var dict1:Dictionary<String, Int>
var dict2:[String:AnyObject]

//초기화
dict1 = Dictionary()
dict1 = Dictionary<String,Int>()
dict2 = [String:AnyObject]()
dict2 = [:]   // 대괄호인데 콜론 들어있으면 딕셔너리, 없으면 배열임

var person = ["name":"jisoo", "age":"29","phone":"010-8670-0716"]
print("\(person)")

var color = [String:Int]()
color["red"] = 23
color["green"] = 255
color["blue"] = 16

print(color["red"]!)

if color.isEmpty{
   print("빈 딕셔너리입니다")
}

//위의딕셔너리를 배열로 했을때
var colorarr = [Int]()
colorarr.append(23)
colorarr.append(255)
colorarr.append(16)

print(colorarr[0])

// 값 변경
color["red"] = 166
color.updateValue(122, forKey: "blue")

//값 추가
color.updateValue(0, forKey: "new")
print(color)

//값 삭제
color["new"] = nil
print(color)
if let removed = color.removeValue(forKey: "red"){
    print("\(removed) 삭제됨")
}
print(color)

print("------------------")

var station1:Set<String>
station1=["강남역","교대역","을지로입구역"]
print(station1)

var station2=Set<String>()

station2.insert("을지로입구역")
station2.insert("사당역")
station2.insert("서울역")

if station2.isEmpty{
  print("빈 set입니다")
}

station2.remove("서울역")
print(station2)
print("------------------")


station1.intersection(station2)  //교집합
station1.symmetricDifference(station2) //각 셋마다의 유일값
station1.union(station2) //합집합
station1.subtract(station2) //차집합
print("------------------")

var co1:Set<String>
co1=["red","green","black"]

var co2:Set<String>
co2=["red","black"]

co2.isSubset(of: co1)   // co1안에 co2가 들어가나
co1.isSuperset(of: co2)
co1.isStrictSubset(of: co2)
co1.isDisjoint(with: co2)

print("----------옵셔널--------")
let firstname:String?
firstname = "길동"

let lastname:String?
lastname="홍"

var tempnage:Int?
tempnage=nil  //이게 null이야
tempnage=29

// optional 강제해제 (느낌표 달면 강제해제됨)
// nil인상태인 경우에 !표 해제하면 에러남
var fullname:String = lastname! + firstname!

//if 문을 이용한 옵셔널 바인딩
if let name = firstname{
    var name = "이름은" + name + "입니다."
}

// 옵셔널 바인딩
if let first = firstname, let last = lastname{
    var name = first + last
}

// 비교연산에서는 옵셔널 해제 하지 않아도 가능함
var age:Int = 29

if age == 29 {
 print("29세입니다")
}

//매개견수없고, 리턴타입도 없는 함수
func helloworld(){
  print("hihi")
}
helloworld()

//매개변수 없고, 리턴값이 있는 함수
func getDate() -> String{
 return "2017-08-08"
}
var date = getDate()

//매개변수 있고, 리턴값 없는 함수
//setuser(username)까지도 함수이름이야
//매개변수명과, 매개변수타입선언
func setUser(username:String){
print("\(username) 환영보스")
}
setUser(username: "jisoo")

//매개변수 여러개면 같이 줄줄이 써도 가능함
func setUser(username:String, userage:Int){
    print("\(username) 환영보스 \(userage)살 이구나")
}
setUser(username: "jisoo", userage: 29)


//매개변수, 리턴값 모두 있는 함수
// 첫번째 -> 이거 옆이 리턴타입이고 왼쪽이 매개변수임
func add(firstnum:Int, secondenum:Int) -> Int{
    return firstnum + secondenum
}
var result = add(firstnum: 1, secondenum: 2)


//튜플타입으로 반환되는(리턴되는) 함수
func getNameAndAge() -> (String, Int){
    return ("홍길동", 22)
}
let (name1, age1) = getNameAndAge()


typealias size = (Int, Int)
func getSize() -> size{
    return (200,100)
}
print(getSize())



// 외부 매개변수, 내부 매개변수명을 선언함
// name, id, email 이 외부매개변수 명이야
func adduser2(name username:String, id userid:String, email usereail: String){
  let param1 = username
  let param2 = userid
  let param3 = usereail
}
adduser2(name: "jisoo", id: "1234mile'", email: "1234milejs@gmail.com")


//외부 매개변수명 생략 (_ 언더바일때 생략 가능)
func addperson(_ name:String, _ id:String){
    let param1 = name
    let param2 = id
}
addperson("jisoo", "1234mile" )


// 가변인자
func average(user:String, scores:Int...){
    var tot:Int = 0
    for score in scores {
     tot += score
    }
    let avg = tot / scores.count
    print("\(user)님의 평균은 \(avg)점 입니다.")
}
average(user: "jisoo", scores: 77,100,150,98)

//기본값 (age에 0을 디폴트로 주겠다는거지)
func setnameandage2(user:String, age:Int = 0){
 print("\(user)님 나이는 \(age)입니다.")
}
setnameandage2(user: "박보검")
setnameandage2(user: "박보검", age: 23)


