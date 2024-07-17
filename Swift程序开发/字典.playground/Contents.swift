import UIKit

///字典类型
var dic1:[Int:String]
dic1 = [1:"1",2:"2",3:"3"]
dic1.isEmpty
dic1[4] = "4"
for zd1 in dic1.keys {
    print(zd1)
}   ///通过键遍历字典
for zd2 in dic1.values {
    print(zd2)
}   ///通过值遍历字典
for zd3 in dic1 {
    zd3    ///直接遍历
}

