import UIKit

class Student {
    //存储属性
    var age:Int = 0
    var name:String?
    var chineseScore:Double = 80
    var mathScore:Double = 90
    
    var gender:String = { () -> String in
        print("性别设置")
        return "男"
    }()

    //计算属性
    var averageScore:Double {
        get{
            return (chineseScore + mathScore) / 2
        }
        set {
            self.chineseScore = newValue
        }
    }
    //只读属性
    var grade:String {
        return "一年级"
    }
    //懒加载属性
    lazy var teachers:[String] = {
        () -> [String] in
        print("123456")
        return ["Mr W","Mr L"]
    }()
    //类型属性
    static var courseCount:Int = 5
}
//创建对象
let stu = Student()
//赋值
stu.age = 10
//访问
stu.chineseScore

stu.averageScore = 100
stu.averageScore

//类名，访问
Student.courseCount = 10
Student.courseCount

for _ in 0...3 {
    stu.teachers
}


class Work {
    var name:String
    init(name:String) {
        self.name = name
        print("work")
    }
}

class People {
    var age:Int
    var work2:Work = Work(name: "李四")
    lazy var work:Work = Work(name:"张三")
    init(age:Int) {
        self.age = age
    }
}

var people = People(age: 18)

people.work

