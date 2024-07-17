import UIKit

struct Car {
    ///设置属性、外部特征
    var price:Int  ///价格
    var brand:String  ///品牌
    var petrol:Int  ///油量
    ///行为特征、函数
    ///mutating是修饰词，作用是让函数能够修改属性
    mutating func drive() {
        if petrol>0 {
            petrol -= 1
            print("drive 10 milo")
        }
    }
    mutating func addpetrol() {
        petrol += 10
        print("加了10单位的油")
    }
//    init(price:Int,brand:String) {
//        self.price = price
//        self.brand = brand
//        self.petrol = 15
//    }
}
///结构体的实例化，声明一个结构体对象
var car = Car(price: 100000, brand: "五菱宏光", petrol: 10)
print("这辆\(car.brand)汽车价格\(car.price),油量\(car.petrol)")

///模拟汽车行车行为
for item in 0...100 {
    if car.petrol == 0 {
        car.addpetrol()
    }else{
        car.drive()
    }
}

var car1 = Car(price: 150000, brand: "江淮", petrol: 10)
print("这辆\(car.brand)汽车价格\(car.price),油量\(car.petrol)")
var car2 = car1
car2.price = 200000
car2.brand = "abc"
print("这辆\(car2.brand)汽车价格\(car2.price),油量\(car2.petrol)")
