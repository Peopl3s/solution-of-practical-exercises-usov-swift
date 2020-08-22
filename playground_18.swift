enum Color{
    case black(russianName: String)
    case white(russianName: String)
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
}

