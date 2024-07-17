import UIKit

///声明字符串变量并赋值
var str:String
str = "120,ABC"
print(str)   ///打印
str = str + " hello"

///数据类型
var zhengxing = 10086  ///整型
var fudian = 6.66   ///浮点型
var buer = true   ///布尔型

///元组
var yuanzu:(name:String,price:Int) = ("元组",10)
var name = yuanzu.name
var price = yuanzu.price

///可选值类型
var obj:String?
if obj==nil {
    print(1)
}   ///to page 19~22

///字符串构造
var kong = String()   ///空字符串
var zfc = String("👋")   ///字符串
var zx = String(666)    ///整型
var fd = String(6.66)   ///浮点型
var zf = String("abc")  ///字符
var be = String(false)  ///布尔型

///字符串组合
var a1 = "ABC"
var a2 = "120"
var a3 = a1 + " " + a2
