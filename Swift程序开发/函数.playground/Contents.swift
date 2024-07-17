import UIKit

///函数运用
var s : Int = 1
func jiecheng(param:Int) -> Int?{
    guard param >= 0 else {
        return nil
    }
    if param == 0 {
        return 1
    }else {
        for item in 1...param {
            s = s * item
    }
    }
    return s
}
jiecheng(param: 10)     /////求阶乘


///读文件
var banji:Array<String> = []
if let fileURL = Bundle.main.url(forResource: "班级名单", withExtension: "txt") {
do {
    let fileContents = try String(contentsOf: fileURL)
    let lines = fileContents.components(separatedBy: "\n")
    for item in lines{
        banji.append(item)
    }
} catch {
    print("error")
}
}

var order:Set<Int> = []
for item1 in 0...89 {
    order.insert(item1)
}   ///创建集合，添加顺序

var dic1:Dictionary<Int,String> ///声明字典
dic1 = Dictionary()   ///赋值
var first = 0
for item2 in order{
    dic1[item2 + 1] = banji[first]
    first = first+1
}
for item2 in dic1{
    print(item2)
}   ///匹配排序

for paixu in dic1.sorted(by: { (class1,class2) -> Bool in return class1.key < class2.key}) {
    print("\(paixu.value)的顺序是\(paixu.key)")   ///按抽签顺序排序
}
