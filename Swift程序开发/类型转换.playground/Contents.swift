import UIKit
//一
//基本类型转换
let num1 = 10
let num2 = 10.9
let num3 = num1 + Int(num2)
let num4 = Double(num1) + num2

//基本类型与字符串转换
var age = 18
var str = "年龄\(age)岁"

//字符串转换基本类型
let number = "123"
let no = Bool(number)

//二
//any：任何类型
let arr:[Any] = [1,2,3,4,5,"q"]

//AnyObject：任意类型实例
class A {}
class B {}
let arr2:[AnyObject] = [A(),B()]

//三
//is：类型检查
let str1 = "abc"
print(type(of: String))
//str1 is String

//as:as as? as!
class Animal {}
class Cat: Animal {}
let cat = Cat()
//从子类转为父类（向上转型）
let animal = cat as Animal
//向下转型
//print("abc" as? String)
//print("abc" as! String)
