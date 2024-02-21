//
//  DemoSwiftApp.swift
//  DemoSwift
//
//  Created by liuwenjin on 2024/2/8.
//

import SwiftUI
import SwiftData
import Alamofire

class Person {
    var name: String
    init(name: String) {
        self.name = name
        print("Person \(name) has been initialized.")
    }
    deinit {
        print("Person \(name) has been deallocated.")
    }
    private(set) var iphones: [iPhone] = [iPhone]()
    func add(iphone: iPhone) {
        iphones.append(iphone)
        iphone.owner = self
    }
}
class iPhone {
    let model: String
    weak var owner: Person?
    init(model: String) {
        self.model = model
        print("iPhone \(model) has benn initialized.")
    }
    deinit {
        print("iPhone \(model) has benn deallocated")
    }
}
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}
class CreditCard {
    let number: UInt64
    weak var customer: Customer?
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

@main
struct DemoSwiftApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            
//            let person1 = Person(name: "Kenneth")
//            let iphone1 = iPhone(model: "7 Plus")
//            person1.add(iphone: iphone1)
//            let cus1 = Customer(name: "Kenneth")
//            let cus2 = CreditCard(number: 6222136579841254, customer: cus1)
//            cus1.card = cus2
            
//            func calcDecrement(forDecrement total: Int) -> () -> Int {
//               var overallDecrement = 0
//               func decrementer() -> Int {
//                  overallDecrement -= total
//                  return overallDecrement
//               }
//               return decrementer
//            }
//            let decrem = calcDecrement(forDecrement: 30)
//            print(decrem())
  
            
//            enum DaysofaWeek {
//                case Sunday
//                case Monday
//                case TUESDAY
//                case WEDNESDAY
//                case THURSDAY
//                case FRIDAY
//                case Saturday
//            }
//            
//            var weekDay = DaysofaWeek.THURSDAY
//            weekDay = .FRIDAY
//            switch weekDay {
//            case .Sunday:
//                print("星期天")
//            case .Monday:
//                print("星期一")
//            case .TUESDAY:
//                print("星期二")
//            case .WEDNESDAY:
//                print("星期三")
//            case .THURSDAY:
//                print("星期四")
//            case .FRIDAY:
//                print("星期五")
//            case .Saturday:
//                print("星期六")
//            }
            
            
//            enum Student{
//                case Name(String)
//                case Mark(Int,Int,Int)
//            }
//            var studDetails = Student.Name("Runoob")
//            var studMarks = Student.Mark(98,97,95)
//            switch studMarks {
//            case .Name(let studName):
//                print("学生的名字是: \(studName)。")
//            case .Mark(let Mark1, let Mark2, let Mark3):
//                print("学生的成绩是: \(Mark1),\(Mark2),\(Mark3)。")
//            }
            
//            enum Month: Int {
//                case January = 1, February, March, April, May, June, July, August, September, October, November, December
//            }
//
//            let yearMonth = Month.December.rawValue
//            print("数字月份为: \(yearMonth)。")
            

//            class sample {
//                var no = number() // `var` 关键字是必须的
//            }
//
//            class number {
//                var name = "Runoob Swift 教程"
//            }
//
//            var firstsample = sample()
//            print(firstsample.no.name)
  
//            class Samplepgm {
//                var counter: Int = 0{
//                    willSet(newTotal){
//                        print("计数器: \(newTotal)")
//                    }
//                    didSet{
//                        if counter > oldValue {
//                            print("新增数 \(counter - oldValue)")
//                        }
//                    }
//                }
//            }
//            let NewCounter = Samplepgm()
//            NewCounter.counter = 100
//            NewCounter.counter = 800
  
//            struct StudMarks {
//               static let markCount = 97
//               static var totalCount = 0
//               var InternalMarks: Int = 0 {
//                  didSet {
//                     if InternalMarks > StudMarks.markCount {
//                        InternalMarks = StudMarks.markCount
//                     }
//                     if InternalMarks > StudMarks.totalCount {
//                        StudMarks.totalCount = InternalMarks
//                     }
//                  }
//               }
//            }
//
//            var stud1Mark1 = StudMarks()
//            var stud1Mark2 = StudMarks()
//
//            stud1Mark1.InternalMarks = 98
//            print(stud1Mark1.InternalMarks)
//
//            stud1Mark2.InternalMarks = 87
//            print(stud1Mark2.InternalMarks)
  
            
//            class division {
//                var count: Int = 0
//                func incrementBy(no1: Int, no2: Int) {
//                    count = no1 / no2
//                    print(count)
//                }
//            }
//
//            let counter = division()
//            counter.incrementBy(no1: 1800, no2: 3)
//            counter.incrementBy(no1: 1600, no2: 5)
//            counter.incrementBy(no1: 11000, no2: 3)
            
//            struct area {
//                var length = 1
//                var breadth = 1
//                
//                func area() -> Int {
//                    return length * breadth
//                }
//                
//                mutating func scaleBy(res: Int) {
//                    length *= res
//                    breadth *= res
//                    
//                    print(length)
//                    print(breadth)
//                }
//            }
//
//            var val = area(length: 3, breadth: 5)
//            val.scaleBy(res: 3)
//            val.scaleBy(res: 30)
//            val.scaleBy(res: 300)
            
//            struct area {
//                var length = 1
//                var breadth = 1
//                
////                func area() -> Int {
////                    return length * breadth
////                }
//                
//                mutating func scaleBy(res: Int) {
//                    self.length *= res
//                    self.breadth *= res
//                    print(length)
//                    print(breadth)
//                }
//            }
//            var val = area(length: 3, breadth: 5)
//            val.scaleBy(res: 13)
            
//            class Math
//            {
//                class func abs(number: Int) -> Int
//                {
//                    if number < 0
//                    {
//                        return (-number)
//                    }
//                    else
//                    {
//                        return number
//                    }
//                }
//            }
//
//            struct absno
//            {
//                static func abs(number: Int) -> Int
//                {
//                    if number < 0
//                    {
//                        return (-number)
//                    }
//                    else
//                    {
//                        return number
//                    }
//                }
//            }
//
//            let no = Math.abs(number: -35)
//            let num = absno.abs(number: -5)
//
//            print(no)
//            print(num)
            
//            struct Matrix {
//                let rows: Int, columns: Int
//                var print: [Double]
//                init(rows: Int, columns: Int) {
//                    self.rows = rows
//                    self.columns = columns
//                    print = Array(repeating: 0.0, count: rows * columns)
//                }
//                subscript(row: Int, column: Int) -> Double {
//                    get {
//                        return print[(row * columns) + column]
//                    }
//                    set {
//                        print[(row * columns) + column] = newValue
//                    }
//                }
//            }
//            // 创建了一个新的 3 行 3 列的Matrix实例
//            var mat = Matrix(rows: 3, columns: 3)
//
//            // 通过下标脚本设置值
//            mat[0,0] = 1.0
//            mat[0,1] = 2.0
//            mat[1,0] = 3.0
//            mat[1,1] = 5.0
//
//            // 通过下标脚本获取值
//            print("\(mat[0,0])")
//            print("\(mat[0,1])")
//            print("\(mat[1,0])")
//            print("\(mat[1,1])")
            
//            class Circle {
//                var radius = 12.5
//                var area: String {
//                    return "矩形半径 \(radius) "
//                }
//            }
//
//            // 继承超类 Circle
//            class Rectangle: Circle {
//                var print = 7
//                override var area: String {
//                    return super.area + " ，但现在被重写为 \(print)"
//                }
//            }
//
//            let rect = Rectangle()
//            rect.radius = 25.0
//            rect.print = 3
//            print("Radius \(rect.area)")
            
//            class Circle {
//                var radius = 12.5
//                var area: String {
//                    return "矩形半径为 \(radius) "
//                }
//            }
//
//            class Rectangle: Circle {
//                var print = 7
//                override var area: String {
//                    return super.area + " ，但现在被重写为 \(print)"
//                }
//            }
//
//
//            let rect = Rectangle()
//            rect.radius = 25.0
//            rect.print = 3
//            print("半径: \(rect.area)")
//
//            class Square: Rectangle {
//                override var radius: Double {
//                    didSet {
//                        print = Int(radius/5.0)+1
//                    }
//                }
//            }
//
//
//            let sq = Square()
//            sq.radius = 100.0
//            print("半径: \(sq.area)")
            
//            struct Rectangle {
//                var length: Double
//                var breadth: Double
//                var area: Double
//                
//                init(fromLength length: Double, fromBreadth breadth: Double) {
//                    self.length = length
//                    self.breadth = breadth
//                    area = length * breadth
//                }
//                
//                init(fromLeng leng: Double, fromBread bread: Double) {
//                    self.length = leng
//                    self.breadth = bread
//                    area = leng * bread
//                }
//            }
//
//            let ar = Rectangle(fromLength: 6, fromBreadth: 12)
//            print("面积为: \(ar.area)")
//
//            let are = Rectangle(fromLeng: 36, fromBread: 12)
//            print("面积为: \(are.area)")
            
//            struct Rectangle {
//                var length: Double
//                
//                init(frombreadth breadth: Double) {
//                    length = breadth * 10
//                }
//                
//                init(frombre bre: Double) {
//                    length = bre * 30
//                }
//                //不提供外部名字
//                init(_ area: Double) {
//                    length = area
//                }
//            }
//
//            // 调用不提供外部名字
//            let rectarea = Rectangle(180.0)
//            print("面积为: \(rectarea.length)")
//
//            // 调用不提供外部名字
//            let rearea = Rectangle(370.0)
//            print("面积为: \(rearea.length)")
//
//            // 调用不提供外部名字
//            let recarea = Rectangle(110.0)
//            print("面积为: \(recarea.length)")
            
//            struct Rectangle {
//                let length: Double?
//                
//                init(frombreadth breadth: Double) {
//                    length = breadth * 10
//                }
//                
//                init(frombre bre: Double) {
//                    length = bre * 30
//                }
//                
//                init(_ area: Double) {
//                    length = area
//                }
//            }
//
//            let rectarea = Rectangle(180.0)
//            print("面积为：\(String(describing: rectarea.length))")
//
//            let rearea = Rectangle(370.0)
//            print("面积为：\(String(describing: rearea.length))")
//
//            let recarea = Rectangle(110.0)
//            print("面积为：\(String(describing: recarea.length))")
            
//            class ShoppingListItem {
//                var name: String?
//                var quantity = 1
//                var purchased = false
//            }
//            var item = ShoppingListItem()
//
//
//            print("名字为: \(String(describing: item.name))")
//            print("数理为: \(item.quantity)")
//            print("是否付款: \(item.purchased)")
            
//            struct Rectangle {
//                var length = 100.0, breadth = 200.0
//            }
//            let area = Rectangle(length: 24.0, breadth: 32.0)
//
//            print("矩形的面积: \(area.length)")
//            print("矩形的面积: \(area.breadth)")
            
//            class mainClass {
//                var no1 : Int // 局部存储变量
//                init(no1 : Int) {
//                    self.no1 = no1 // 初始化
//                }
//            }
//
//            class subClass : mainClass {
//                var no2 : Int
//                init(no1 : Int, no2 : Int) {
//                    self.no2 = no2
//                    super.init(no1:no1)
//                }
//                // 便利方法只需要一个参数
//                override convenience init(no1: Int)  {
//                    self.init(no1:no1, no2:0)
//                }
//            }
//            let res = mainClass(no1: 20)
//            let res2 = subClass(no1: 30, no2: 50)
//
//            print("res 为: \(res.no1)")
//            print("res2 为: \(res2.no1)")
//            print("res2 为: \(res2.no2)")
            
//            class SuperClass {
//                var corners = 4
//                var description: String {
//                    return "\(corners) 边"
//                }
//            }
//            let rectangle = SuperClass()
//            print("矩形: \(rectangle.description)")
//
//            class SubClass: SuperClass {
//                override init() {  //重载构造器
//                    super.init()
//                    corners = 5
//                }
//            }
//
//            let subClass = SubClass()
//            print("五角型: \(subClass.description)")
            
//            class MainClass {
//                var name: String
//                
//                init(name: String) {
//                    self.name = name
//                }
//                
//                convenience init() {
//                    self.init(name: "[匿名]")
//                }
//            }
//            let main = MainClass(name: "Runoob")
//            print("MainClass 名字为: \(main.name)")
//
//            let main2 = MainClass()
//            print("没有对应名字: \(main2.name)")
//
//            class SubClass: MainClass {
//                var count: Int
//                init(name: String, count: Int) {
//                    self.count = count
//                    super.init(name: name)
//                }
//                
//                override convenience init(name: String) {
//                    self.init(name: name, count: 1)
//                }
//            }
//
//            let sub = SubClass(name: "Runoob")
//            print("MainClass 名字为: \(sub.name)")
//
//            let sub2 = SubClass(name: "Runoob", count: 3)
//            print("count 变量: \(sub2.count)")
            
//            struct Animal {
//                let species: String
//                init?(species: String) {
//                    if species.isEmpty { return nil }
//                    self.species = species
//                }
//            }
//
//            //通过该可失败构造器来构建一个Animal的对象，并检查其构建过程是否成功
//            // someCreature 的类型是 Animal? 而不是 Animal
//            let someCreature = Animal(species: "长颈鹿")
//
//            // 打印 "动物初始化为长颈鹿"
//            if let giraffe = someCreature {
//                print("动物初始化为\(giraffe.species)")
//            }
            
//            enum TemperatureUnit {
//                case Kelvin, Celsius, Fahrenheit
//                init?(symbol: Character) {
//                    switch symbol {
//                    case "K":
//                        self = .Kelvin
//                    case "C":
//                        self = .Celsius
//                    case "F":
//                        self = .Fahrenheit
//                    default:
//                        return nil
//                    }
//                }
//            }
//            let fahrenheitUnit = TemperatureUnit(symbol: "F")
//            if fahrenheitUnit != nil {
//                print("这是一个已定义的温度单位，所以初始化成功。")
//            }
//            let unknownUnit = TemperatureUnit(symbol: "X")
//            if unknownUnit == nil {
//                print("这不是一个已定义的温度单位，所以初始化失败。")
//            }
            
//            class Person {
//                var residence: Residence?
//            }
//
//            // 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
//            class Residence {
//                var rooms = [Room]()
//                var numberOfRooms: Int {
//                    return rooms.count
//                }
//                subscript(i: Int) -> Room {
//                    return rooms[i]
//                }
//                func printNumberOfRooms() {
//                    print("房间号为 \(numberOfRooms)")
//                }
//                var address: Address?
//            }
//
//            // Room 定义一个name属性和一个设定room名的初始化器
//            class Room {
//                let name: String
//                init(name: String) { self.name = name }
//            }
//
//            // 模型中的最终类叫做Address
//            class Address {
//                var buildingName: String?
//                var buildingNumber: String?
//                var street: String?
//                func buildingIdentifier() -> String? {
//                    if (buildingName != nil) {
//                        return buildingName
//                    } else if (buildingNumber != nil) {
//                        return buildingNumber
//                    } else {
//                        return nil
//                    }
//                }
//            }
//
//            let john = Person()
//
//            let johnsHouse = Residence()
//            johnsHouse.rooms.append(Room(name: "客厅"))
//            johnsHouse.rooms.append(Room(name: "厨房"))
//            john.residence = johnsHouse
//
//            if let firstRoomName = john.residence?[0].name {
//                print("第一个房间名为\(firstRoomName)")
//            } else {
//                print("无法检索到房间")
//            }
            
            
//            class Student {
//                let name: String
//                var section: Marks?
//                
//                init(name: String) {
//                    self.name = name
//                }
//                
//                deinit { print("\(name)") }
//            }
//            class Marks {
//                let marks: Int
//                unowned let stname: Student
//                
//                init(marks: Int, stname: Student) {
//                    self.marks = marks
//                    self.stname = stname
//                }
//                
//                deinit { print("学生的分数为 \(marks)") }
//            }
//
//            var module: Student?
//            module = Student(name: "ARC")
//            module!.section = Marks(marks: 98, stname: module!)
//            module = nil
            


//            var Trial1 = 3.3
//            Trial1.square()
//            print("圆的面积为: \(Trial1)")
//
//
//            var Trial2 = 5.8
//            Trial2.square()
//            print("圆的面积为: \(Trial2)")
//
//
//            var Trial3 = 120.3
//            Trial3.square()
//            print("圆的面积为: \(Trial3)")
            var a = MultipartFormData()
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
extension Double {
   mutating func square() {
      let pi = 3.1415
      self = pi * self * self
   }
}
