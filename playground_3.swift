// Task 1
var simpleIntValue: Int
var simpleFloatValue: Float
var simpleDoubleValue: Double

simpleIntValue = 18; simpleFloatValue = 16.4; simpleDoubleValue = 5.7;
var sumThreeValues: Float = Float(simpleIntValue) + simpleFloatValue + Float(simpleDoubleValue)
var mulThreeValues: Int = simpleIntValue * Int(simpleFloatValue *  Float(simpleDoubleValue))
var modTwoValues: Double = Double(simpleFloatValue).truncatingRemainder(dividingBy: simpleDoubleValue)

print("Sum of three values: \(sumThreeValues)")
print("Mul of three values: \(mulThreeValues)")
print("Mod  of float and double values: \(modTwoValues)")

// Task 2 
var a: Int 
var b: Int 
a = 2; b = 3
var resultIntExpression: Int = (a + 4 * b) * (a - 3 * b) + (a * a)
print("Result: \(resultIntExpression)")

// Task 3
var c = 1.75
var d = 3.25
var resultDoubleExpression: Double = 2 * (c + 1) * 2 + 3 * (d + 1)
print("Result: \(resultDoubleExpression)")

// Task 4
let length = 15 
let squareArea = length * length
let circumference = Double(2) * 3.14 * Double(length)
