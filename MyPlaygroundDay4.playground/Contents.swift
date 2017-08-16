

// 변수나 상수에 함수 대입
func addNum(firstNum:Int, secondNum:Int) -> Int{
    return firstNum + secondNum
}

let addFunc = addNum
var result = addFunc(1, 2)

// 변수나 상수의 함수타입 선언
let funcType:(Int, Int) -> Int
funcType = addNum(firstNum:secondNum:)
result = funcType (2, 2)


//함수의 반환 타입으로 함수#1
func getAddFunc() -> (Int, Int) -> Int {
    func addFunc(firstNum:Int, secondNum:Int) -> Int{
        return firstNum + secondNum
    }
    return addFunc
}
let myFunc = getAddFunc()
result = myFunc(3, 4)


//함수의 반환 타입으로 함수#2 (클로저)
func getNewAddFunc(firstNum:Int, secondNum:Int) -> () ->Int {
    func addFunc() -> Int{
        return firstNum + secondNum
    }
    return addFunc
}
let myNewFunc = getNewAddFunc(firstNum: 4, secondNum: 7)
result = myNewFunc()


// 함수의 인자값으로 하수 사용
func setAddFunc(firstNum:Int, secondNum:Int, addFunc:(Int, Int) -> Int ) -> Int {
    let result = addFunc(firstNum, secondNum)
    return result
}
result = setAddFunc(firstNum: 10, secondNum: 99, addFunc: addNum(firstNum:secondNum:))


// *************** 클로저 ***************
// {(매개변수들) -> 반환타입 in 실행코드 }
var fp0:(Int, Int) -> Int

fp0 = {
    (param1:Int, param2:Int) -> Int in
    return param1 + param2
}
fp0(1,2)


// 반환값(리턴타입) 생략
fp0 = {
    (param1:Int, param2:Int)in
    return param1 + param2
}
fp0(1,2)


// 매개변수 타입 생략
// 변수에서 선언된 타입을 참고함. 따라서 벼수의 타입이 없으면 생략 불가함
var fp1:(Float, Float) -> Float = {
 (param1, param2) in
    return param1 + param2
}
fp1(1.2, 2.3)

//매개변수생략
//$표시로 인덱스값으로 접근 가능함
fp1 = { return $0 + $1}
fp1(1.1, 2.2)

// 리턴도 생략 가능함
fp1 = { $0 + $1}
fp1(1.1, 2.2)

