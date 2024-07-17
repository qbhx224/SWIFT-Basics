import UIKit

//扩展
//系统定义好的
//1.添加计算属性
extension Double {
    var km:Double{ return self * 1000.0}
    var m:Double{ return self}
    var cm:Double{ return self / 1000}
//2.添加新的方法
static func cal() {
    print("cal")
    }
}
Double(10.5).km
100.5.cm
100.5.m

Double.cal()

//自己定义的
struct Animal {
    var sp:String
    init(spe:String) {
        self.sp = spe
    }
}
extension Animal {
    //3.扩展构造函数（类与结构体不同）
    init(name:String) {
        self.init(spe: name)
    }
}

class Animal2 {
    var sp:String
    init(spe:String) {
        self.sp = spe
    }
}

protocol A {
    var width:Double{get}
    func run()
}

extension Animal2:A {
    func run() {
        print("run")
    }
    var width: Double {
        return 100.0
    }
}

extension Animal2 {
    func play() {
        self.sp = "abc"
        print("play")
    }
//3.扩展构造函数（类与结构体不同）
convenience init(name:String) {
    self.init(spe:name)
    }
}
