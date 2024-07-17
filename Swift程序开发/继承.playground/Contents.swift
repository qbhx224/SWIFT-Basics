import UIKit

//父类（最高）
class A{
    func makeNoise(){
        print("ba ba")
    }
}
//父类
class Vehicle:A{    //继承父类的父类
    var speed = 0.0
//    func makeNoise(){
//        print("Ba Ba")
//    }
    final func run() {   //final阻止子类重写
        print("RUN?")
    }
}

class Vehicle1{
    var price = 6499
    func name(){
        print("XiaoMi 14 ultra")
    }
}
//子类1
class Bicycle:Vehicle{
    var hasBasket = false
}

class Phone1:Vehicle1{
    var ip68 = true
    
}
//子类2
class Car:Vehicle{
    var banner = "皖B12345"
    //重写父类的方法
    override func makeNoise() {
        print("di di")
    }
}

class Phone2:Vehicle1{
    var banner = "XiaoMi"
    
}
//访问
//Vehicle.init()
let vehicle = Vehicle()
vehicle.makeNoise()

let bicycle = Bicycle()
bicycle.makeNoise()
bicycle.speed
bicycle.hasBasket

let car = Car()
car.makeNoise()
car.speed
car.banner
car.run()

let vehicle1 = Vehicle1()
vehicle1.name()

let phone1 = Phone1()
phone1.ip68
phone1.name()
phone1.price

let phone2 = Phone2()
phone2.banner
phone2.price
phone2.name()
//
//
//
//子类1
class car1:Vehicle{
    var useoil = true
    override func makeNoise() {
        print("DING DING")
    }
}
//子类2
class car2:Vehicle{
    var banner = "皖B10086"
    override func makeNoise() {
        print("bang bang")
    }
}
//子类3
class bus:Vehicle{
    var tip = "代号1"
}
//多态的产生
var vehicle2:Vehicle = car1()
vehicle2.makeNoise()

vehicle2 = car2()
vehicle2.makeNoise()

vehicle2 = bus()
vehicle2.makeNoise()
