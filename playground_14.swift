enum Color{
    case white, black
}

enum Chessmen{
    case king(nameInRussin: String, color: Color)
    case queen(nameInRussin: String, color: Color)
    case bishop(nameInRussin: String, color: Color)
    case knight(nameInRussin: String, color: Color)
    case rook(nameInRussin: String, color: Color)
    case pawns(nameInRussin: String, color: Color) 
}

let chessFigure: Chessmen 
chessFigure = .king(nameInRussin: "Король", color: .white)
