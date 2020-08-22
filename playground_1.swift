var intNum:Int8 = Int8.min
var unsignedIntNum:UInt8 = UInt8.max
print(intNum, unsignedIntNum)

var implicitIntNum = 10
var explicitIntNum:Int = 5

var tmp:Int 

tmp = implicitIntNum
implicitIntNum = explicitIntNum
explicitIntNum = tmp 

print("Implicit Int Number: \(implicitIntNum)")
print("Explicit Int Number: \(explicitIntNum)")