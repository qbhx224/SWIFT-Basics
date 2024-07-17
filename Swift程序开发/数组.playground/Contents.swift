import UIKit

///数组类型
var array1:[Int] ///Int型数组
array1 = [1,2,3]
var array2 = [String](repeating: "valorant", count: 5)
array2.count
array2.first
array2.last
array2.append("NB")
array1.insert(5, at: 0)
array1.remove(at: 2)
array1.removeFirst()
array1.removeAll()
if array1.contains(1) {
    print(true)
}else{
    print(false)
}
var arraysort = [1,3,5,7,9]
arraysort = arraysort.sorted(by: >)
arraysort = arraysort.sorted(by: <)
arraysort.max()
arraysort.min()
