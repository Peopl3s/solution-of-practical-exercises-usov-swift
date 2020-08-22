typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
let firstOperation: Operation = (3.1, 33, "+")
switch firstOperation.operation {
    case "+":
        print(firstOperation.operandOne + firstOperation.operandTwo)
    case "-":
        print(firstOperation.operandOne - firstOperation.operandTwo)
    case "*":
        print(firstOperation.operandOne * firstOperation.operandTwo)
    case "/":
        print(firstOperation.operandOne / firstOperation.operandTwo)
    default:
        print("Ошибка операции")
}