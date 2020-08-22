import Foundation

enum ArithmeticExpression {
        case number(Int)
        indirect case addition(ArithmeticExpression, ArithmeticExpression)
        indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
        indirect case multiply(ArithmeticExpression, ArithmeticExpression)
        indirect case power(ArithmeticExpression, ArithmeticExpression)
        func evaluate(expression: ArithmeticExpression? = nil ) -> Int{
                    let expression = (expression == nil ? self : expression)
                    switch expression! {
                        case .number( let value ):
                            return value
                        case .addition( let valueLeft, let valueRight ):
                            return self.evaluate( expression: valueLeft ) + self.evaluate( expression: valueRight )
                        case .subtraction( let valueLeft, let valueRight ):
                            return self.evaluate( expression: valueLeft ) - self.evaluate( expression: valueRight )
                        case .multiply( let valueLeft, let valueRight ):
                            return self.evaluate( expression: valueLeft ) * self.evaluate( expression: valueRight )
                        case .power( let valueLeft, let valueRight ):
                            return Int(pow(Double(self.evaluate(expression: valueLeft)), 
                                        Double(self.evaluate(expression: valueRight))))
                    }
            
        }
}

var expr = ArithmeticExpression.power(.multiply(.addition( .number(20),.subtraction( .number(10), .number(34) ) ), 
                                        .number(2)), .number(2))
print(expr.evaluate())