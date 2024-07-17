import UIKit

///创建枚举类型
enum Xingshi {
    case 王
    case 胡
    case 张
    case 李
}
//enum 枚举名 {
//    case 常量值1
//    case 常量值2
//    ...
//}

///使用枚举类型
///常亮或变量引导（let ，var）
var abc = Xingshi.张  ///类型推断，对abc赋值
abc = Xingshi.王
abc = .胡   ///对abc修改

///对枚举类型的变量进行switch选择结构
switch abc {
case .张:
    print("姓氏张")
case .李:
    print("姓氏李")
case .王:
    print("姓氏王")
default:
    print("姓氏胡")
}

///信号灯
enum TrafficLight {
    case red
    case yellow
    case green
}
var Traffic = TrafficLight.green
switch Traffic {
case .red:
    print("停车")
case .green:
    print("可以通行")
default:
    print("准备停车")
}

///枚举类型指定一个原始值类型
enum a:Int{
    case a = 1
    case b = 2
    case c = 3
}
var v = a.a
var k = v.rawValue
print(k)

///定义形状枚举
enum Shape {
    //圆形，设置圆心和半径为相关值
    case circle(center:(Double,Double),radius:Double)
    case rect(center:(Double,Double),width:Double,height:Double)
}
//创建枚举实例
var circle = Shape.circle(center: (0,0), radius: 5)
var rect = Shape.rect(center: (0,0), width: 4, height: 5)

func shapefunc(param:Shape){
    switch param {
    case let .circle(center,radius):
        print("这个圆的圆心是:\(center)，半径为:\(radius)")
    case let .rect(center,width,height):
        print("这个矩形的中心是:\(center),长为:\(height),宽为:\(width)")
    }
}
shapefunc(param: circle)
shapefunc(param: rect)
