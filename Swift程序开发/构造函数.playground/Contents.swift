import UIKit

//类和结构体中属性必须初始化，3种方式：1，默认值；2，可选型；3，构造函数
//类和结构体无构造函数，系统自动提供；有构造函数，使用自己的构造函数。

//1，值类型构造函数委托
struct Size {
    var width:Double
    var height:Double
    init() {
        self.init(width:2.0,height:2.0)
    }
    init(width:Double,height:Double) {
        //指向类或结构体的一个引用，理解为类或结构体的实例（类的内部使用 ）
        self.width = width
        self.height = height
    }
}
var size = Size()
var size2 = Size(width: 1.2, height: 1.2)

//2，类类型构造函数委托
class Car {
    var speed:Double
    init(speed:Double) {
        //self：之前当前类的引用（代表类的实例）
        self.speed = speed
    }
    convenience init(){
//        self.init(speed2:100.0)
        self.init(speed:90.0)
    }
    convenience init(speed2:Double){
        self.init(speed:speed2)
    }
}
class Bus:Car {
    var wheels:Int
    init(wheels:Int) {
        self.wheels = wheels
        //super：父类
        super.init(speed: 80.0)
    }
    convenience init() {
        self.init(wheels:6)
    }
}
Bus()
Bus(wheels: 6)

//3,构造方法的继承和重写
class BaceC {
    var b:Int
    init() {
        self.b = 10
    }
    init(param:Int) {
        self.b = param
    }
    convenience init (param2:Int) {
    self.init()
    self.init(param:20)
    }
}
class SubC1:BaceC {
    var s1:Int = 12
    //1.无构造方法
}
SubC1()
SubC1(param: 11)
SubC1(param2: 12)

class SubC2:BaceC {
    var s2:Int = 12
    //2.重写父类无参构造方法
    override init() {
//        super.init()
        super.init(param: 22)
    }
}
SubC2()

class SubC3:BaceC {
    var s3:Int
    //3.自定义构造方法
    init(s3:Int) {
        self.s3 = s3
        super.init()
    }
    
}
SubC3(s3: 21)

class SubC4:BaceC {
    var s4:Int
    //4.重写父类所有指定构造方法
    override init() {
        self.s4 = 21
        super.init()
        self.b = 114
    }
    override init(param:Int) {
        self.s4 = 25
        super.init()
    }
}
SubC4()
SubC4(param: 11)
SubC4(param2: 12)
//可失败构造函数和必要构造函数
class Check {
    var p:Int
    //必要构造函数
    required init(p1:Int){
    self.p = p1
    }
    //可失败构造函数
init?(p2:Bool) {
    guard p2 else {
        return nil
    }
    self.p = 11
    }
}
//Check(p2:false)
print(Check(p2: true)!.p)
Check(p1: 111).p
class SubCheck:Check{
    //重写
    required init(p1: Int) {
        super.init(p1: 112)
    }
}
//继承或重写
SubCheck(p1: 54).p

//析构函数
class Temp {
    init() {
        print("init")
    }
    deinit {
        print("deinit")
    }
}
//var t = Temp()
var t:Temp? = Temp.init()
t = nil
