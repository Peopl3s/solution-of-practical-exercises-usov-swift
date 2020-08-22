var fristBoolValue: Bool = true
var secondBoolValue: Bool = false 
let logicAnd = fristBoolValue && secondBoolValue
let logicOr = fristBoolValue || secondBoolValue
print(logicAnd," ",logicOr)
print(( ( true && false ) || true ))
print(true && false && true || ( true || false ))
print(false || ( false || true ) && ( true && false ))