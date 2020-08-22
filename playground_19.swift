enum Color{
    case black(nameInRussin: String)
    case white(nameInRussin: String)
}

enum ChessFigures{
    case king(nameInRussin: String)
    case queen(nameInRussin: String)
    case bishop(nameInRussin: String)
    case knight(nameInRussin: String)
    case rook(nameInRussin: String)
    case pawns(nameInRussin: String) 
}

struct Chessmen{
    var typeFigure: ChessFigures
    var color: Color
    var coords: (String, UInt)? = nil
    init(type: ChessFigures, color: Color){
        self.typeFigure = type 
        self.color = color
    }
    mutating func setCoordinates(char: String, num: UInt) -> Void{
        self.coords = (char, num)
    }
    mutating func kill() -> Void{
        self.coords = nil
    }
}

var fig = Chessmen(type: ChessFigures.bishop(nameInRussin: "Слон"), color: Color.white(nameInRussin: "Белый"))
print(fig.coords)
fig.setCoordinates(char: "A", num: 1)
print(fig.coords!)
fig.kill()
print(fig.coords)    


