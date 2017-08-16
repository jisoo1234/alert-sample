
// 부모클래스 선언
class Shape{
    
    var x:Float
    var y:F#fileLiteral(resourceName: "MyPlayground2Day.playground")loat
    var width:Float
    var height:Float
    var color:String
    
    // 클래스니까 변수 초기화 해줘야함
    init(x:Float, y:Float, width:Float, height:Float, color:String) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.color = color
    }
    
    func draw() {
        print("x: \(self.x), y: \(self.y), width: \(self.width), height: \(self.height), color: \(self.color)")
    }
    
}



//사각형클래스 (:뒤에 상속받을 부모 클래스 적으면돼)
class Rectangle: Shape{
    
    // 부모클래스 펑션을 불러와서 새로고쳐 사용하는거지
    // 오버라이드 뒤에 부모클래스 펑션써주면 돼
    override func draw() {
        print("사각형 그리기")
        super.draw() // 부모클래스에있는 draw 펑션도 실행하라
    }
   
    func shake(){
        print("shake")
    }
    
}



// 원클래스
class Circle: Shape {
    
    override func draw() {
        print("원 그리기")
        super.draw()
    }
}

var rectangle = Rectangle(x: 10, y: 10, width: 10, height: 10, color : "red")
rectangle.draw()

var circle = Circle(x: 10, y: 10, width: 10, height: 10, color : "blue")
circle.draw()

/*
class MoveRectangle: Rectangle{
    // final 붙이면 MoveRectangle 상속받는 클래스에서는 move라는 펑션 수정못한다는 뜻이야
    final func move(toX:Float, toY:Float) {
        self.x = toX
        self.y = toY
        print("\(self.x) , \(self.y)")
        
    }
    
}

var moveRectangle = MoveRectangle(x: 20, y: 15, width: 12, height: 30, color: "black")
moveRectangle.move(toX: 30, toY: 60)
*/

print("*****************************")
var tmp:Shape
tmp = rectangle
tmp.draw()

print("*****************************")

//열거형에 직접 값 줄때는 string 써야해
enum CharacterAction:String {
    case idle = "쉬기"
    case walk = "걷기"
    case run = "달리기"
    case jump = "점프"
}

class Character {
    let name:String
    var action:CharacterAction
    
    init (name:String){
        self.name = name
        self.action = CharacterAction.idle
    }
    
    func run() {
        self.action = CharacterAction.run
    }
    
    func printAction() {
        print(self.action.rawValue)
    }
}
let character = Character(name: "hong")
character.printAction()


print("*****************************")

//열거형에 타입써주면 부가정보 입력이 가능하게됨
enum CharacterAction2 {
    case idle
    case walk(Int)
    case run(Int)
    case jump(Int)
}
class Character2 {
    let name:String
    var action:CharacterAction2
    
    init (name:String){
        self.name = name
        self.action = CharacterAction2.idle
    }
    
    func run(speed:Int) {
        
        self.action = CharacterAction2.run(speed)
        
        switch self.action {
        case let .run(value) where value >= 120:
            print("현재 시속 \(value)km. 과속이다")
        case let .run(value) where value < 120:
            print("현재 시속 \(value)km. 정상이다")
        default:
            print("인식불가")
        }
    }
}

let character2 = Character2(name: "hong")
character2.run(speed: 120)






