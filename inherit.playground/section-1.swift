// inherit & extension 继承和扩展

//父类
class 车 {
    var 速度 = 0
    var 描述 :String {
        return "时速\(速度)公里每小时"
    }
    
    func 声响() {
        
    }
}

let 一辆车 = 车()
一辆车.描述



//子类继承父类
class 自行车: 车 {
    var 有篮子 = false
}

let 一辆自行车 = 自行车()
一辆自行车.有篮子 = false

一辆自行车.速度 = 25
一辆自行车.描述

//子类的子类
class 情侣自行车: 自行车 {
    var 当前乘客数 = 0
}

let 一辆情侣自行车 = 情侣自行车()
一辆情侣自行车.速度 = 20
一辆情侣自行车.描述


//子类重载父类的方法
class 动车: 车 {
    override func 声响() {
        println("嘟---嘟---嘟")
    }

}
let 一辆动车 = 动车()
一辆动车.声响()


//子类重载父类的计算属性
class 汽车: 车 {
    var 轮子数 = 0

    override var 描述 :String {
        return super.描述 + ",有\(轮子数)个轮子"
    }

    override var 速度 :Int {
        didSet {
            if 速度 > 120 {
                println("警告:您的速度已经超过120公里每小时,为了您的安全,进入自动驾驶状态.")
            }
        }
    }

}

let 一辆汽车 = 汽车()
一辆汽车.速度 = 121
一辆汽车.轮子数 = 4
一辆汽车.描述


//扩展 
//--已存在的类/结构体/枚举类型,通常用于
//1.源代码不可知的情况
//2.把复杂的类分解,提高可维护性

extension Double {
    var rmb: Double {
        return self * 0.0597
    }
}
//日本人均月薪31万4150日元
31_4150.rmb


//整数自行平方
extension Int {
    mutating func 平方() {
        self *= self
    }
}

var 一个整数 = 1024
一个整数.平方()
一个整数



