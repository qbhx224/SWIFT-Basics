import UIKit

///集合类型
var set1:Set<Int> = [1,2,3,4]
set1.count
set1.isEmpty
set1.max()
set1.min()
set1.insert(9)
set1.remove(1)
set1.removeFirst()
print(set1)
var set2:Set<Int> = [3,5,7]
var jiaoji = set1.intersection(set2)  ///交集
var buji = set1.symmetricDifference(set2)   ///交集的补集
var bingji = set1.union(set2)   ///并集
var buji1 = set1.subtracting(set2)  ///补集
for zz1 in set2 {
    print(zz1)
}   ///遍历元素
for zz2 in set2.enumerated() {
    print(zz2)
}   ///遍历集合的枚举
for jh1 in set2.sorted(by: >) {
    print(jh1)
}
