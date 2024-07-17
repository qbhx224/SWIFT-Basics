import UIKit

///闭包特征：花括弧

///闭包（对所有奇数返回0）
let ab1:([Int]) -> [Int] =
    {(number) -> [Int] in
        var res = [Int]()
        for number in number {
            if number % 2 == 0 {
                res.append(0)
            }else {
                res.append(number)
            }
        }
        return res

    }
print(ab1([1,2,3,4,5,6,7,8,9]))

///用闭包风格模拟字典遍历
var aq1:Dictionary = [1:"5",2:"4",3:"3",4:"2",5:"1"]
func edic(aq1:Dictionary<Int,String>,closure:(_ key:Int,_ value:String) -> Bool) {
    for item in aq1 {
        if closure(item.0,item.1) {
            return
        }
    }
}
edic(aq1: aq1) { (key,value) -> Bool in
    if key == 5 {
        print(value)
        return true
    }
    print(value)
    return false
}

///闭包类型参数
func choosegrade(grade:[Int],cd:(Int)->Bool)->[Int]{
    var getgrade = [Int]()
    for item in grade {
        if cd(item) {
            getgrade.append(item)
        }
    }
    return getgrade
}
///使用闭包类型参数的函数
choosegrade(grade: [66,44,87,45,78], cd: {
    (grade:Int) -> Bool in
    return grade < 60
})

