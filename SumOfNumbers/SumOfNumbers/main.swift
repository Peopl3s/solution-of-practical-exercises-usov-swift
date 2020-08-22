var a:String?
repeat{
    print("Введите значение первого аргумента: ")
    a = readLine()
} while(Int(a!) == nil)

var b:String?
repeat{
    print("Введите значение второго аргумента: ")
    b = readLine()
} while(Int(b!) == nil)

var result = sum(a, b)
print("Результат суммы: \(result)")
