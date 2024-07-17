import UIKit

//类（class）
//1,封装性：相关属性和动作，安全问题
//2，继承：简化类
//3，多态
//class ab {   //类名称
//    //类的描述
//    //属性，动作
//}
class ClassCar{   ///属性+行为
    var price:Int
    var brand:String
    var petrol:Int
    func drive() {
        if petrol>0 {
            petrol -= 1
            print("drive 10 milo")
        }
    }
    func addpetrol() {
        petrol += 10
        print("加了10单位的油")
    }
    init(price:Int,brand:String,petrol:Int) {
        self.price = price
        self.brand = brand
        self.petrol = petrol
    }
}
var classCar = ClassCar(price: 200000, brand: "abc", petrol: 20)
print("这辆\(classCar.brand)汽车价格\(classCar.price),油量\(classCar.petrol)")
for i in 0...100 {
    if classCar.petrol == 0  {
        classCar.addpetrol()
    }else{
        classCar.drive()
    }
}
var car = ClassCar(price: 150000, brand: "def", petrol: 10)
print("这辆\(car.brand)汽车价格\(car.price),油量\(car.petrol)")
var car2 = car
car2.price = 200000
car2.brand = "ghi"
print("这辆\(car2.brand)汽车价格\(car2.price),油量\(car2.petrol)")
