import UIKit

enum MyError:Error {
    case DestroyError
    case NormalError
    case SimpleError
}
print("111")
//throw MyError.DestroyError
print("222")

func myFunc(p:Bool)throws -> () {
    if p {
        print("success")
    }else{
        throw MyError.SimpleError
    }
}

//try!慎用
try? myFunc(p: false)
//try! myFunc(p: false)
print("^_^")
//推荐的do try catch 方式
do {
    try myFunc(p: false)
}catch MyError.DestroyError {
    print("MyError.DestroyError")
}catch MyError.NormalError {
    print("MyError.NormalError")
}catch MyError.SimpleError {
    print("MyError.SimpleError")
}catch{
    print("otherError")
}
print("233")

//交换数值
//T:类型参数
func swap<T>(_ a:inout T,_ b:inout T) {
    let temp = a
    a=b
    b = temp
}
var one = "诺斯"
var two = "阿米"
swap(&one,&two)
print(one+two)

//类型约束
//func someFunction<T:SomeClass,U:Someprotocol>(someT:T,somrU:U) {}

//访问权限
class Person {
    private var name = "abc"
    private var age = 114514
    private func run() {
        print("run")
    }
    private static func play() {
        print("play")
    }
    private init(name:String) {
        self.name = name
    }
}
//Person()

