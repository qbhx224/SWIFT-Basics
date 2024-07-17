import UIKit

//协议
protocol Pet {
    //属性
    var name:String{get}
    var age:Int{get set}
    //方法
    func feed(feed:String) -> String
    mutating func shout()
}
//实现协议
class Cat:Pet {
    var name: String {
        get{return "mimi"}
        set{}
    }
    
    var age: Int {
        get{return 10}
        set{}
    }
    
    func feed(feed:String = "猫粮") -> String {
        print(feed)
        return "猫粮"
    }
    func shout() {
        print("shout")
    }
}

struct Cat2:Pet {
    let name: String = "gulu"
    var age: Int = 5
    func feed(feed:String) -> String {
        print(feed)
        return "猫粮"
    }
    mutating func shout() {
        print("shout")
    }
}

//协议的继承
protocol SupProtocol {
    func jump()
}
protocol Sup2Protocol {
    func run()
}
protocol Sup3Protocol {
    var age:Int {get}
}
//协议可以多继承
//protocol SubProtocol:SupProtocol,Sup2Protocol,Sup3Protocol {
//    func playBasketball()
//    func playFootball()
//}
typealias GroupProtocol = SupProtocol&Sup2Protocol&Sup3Protocol
protocol SubProtocol:GroupProtocol{
    func playBasketball()
    func playFootball()
}
class People {
    var name:String
    init(name:String) {
        self.name = name
    }
}
typealias GroupClassAndProtocol = GroupProtocol&People
class Person:GroupClassAndProtocol{
    var age:Int = 18
//    let age:Int = 18
//    var age:Int {
//        return 18
//    }
//    var age:Int {
//        get {
//            return18
//        }
//        set{}
//    }   //多种形式
    func run() {
        print("run")
    }
    func playBasketball() {
        print("playBasketball")
    }
    func playFootball() {
        print("playFootball")
    }
    func jump() {
        print("jump")
    }
}

//协议中的方法可选
//1.optional方法
@objc protocol Protocol1 {
    //可选
    @objc optional func playWater()
    func play()
}
class Person2: Protocol1 {
//    func playWater() {
//        print("playWater")
//    }
    func play() {
        print("play")
    }
}
//2.扩展协议
protocol SomeProtocol {
    func requiredFunc()
    func optionalFunc()
}
extension SomeProtocol {
    func optionalFunc() {
        print("optionalFunc")
    }
}
struct Person3:SomeProtocol {
    func requiredFunc() {
        print("requiredFunc")
    }
}
