typealias Text = String 
let firstConst: Text = "123"; let secondConst: Text = "456"; let thirdConst: Text = "m789"

if Int(firstConst) != nil{
    print(firstConst)
}
if Int(secondConst) != nil {
    print(secondConst)
} 
 if Int(thirdConst) != nil {
     print(thirdConst)
 }

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?
var firstTuple: TupleType = ("190", "67")
var secondTuple: TupleType = ("100", nil)
var thirdTuple: TupleType = ("-65", "70")

if secondTuple!.numberOne != nil && secondTuple!.numberTwo != nil{
    print(secondTuple)
}

if firstTuple!.numberOne != nil && firstTuple!.numberTwo != nil{
    print(firstTuple)
}


if thirdTuple!.numberOne != nil && thirdTuple!.numberTwo != nil{
    print(thirdTuple)
}