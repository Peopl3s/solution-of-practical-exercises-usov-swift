enum Chessmen{
    enum Color: String{
        case white = "Белый"
        case black = "Чёрный"
    }
    case king(nameInRussin: String, color: Color)
    case queen(nameInRussin: String, color: Color)
    case bishop(nameInRussin: String, color: Color)
    case knight(nameInRussin: String, color: Color)
    case rook(nameInRussin: String, color: Color)
    case pawns(nameInRussin: String, color: Color) 
}


var chessFigure: Chessmen 
chessFigure = .king(nameInRussin: "Король", color: .white)

switch (chessFigure){
    case let .king(name, color):
             print("\(color.rawValue) - \(name)")
    case let .queen(name, color):
            print(" - \(name)")
    case let .bishop(name, color):
            print(" - \(name)")
    case let .knight(name, color):
            print(" - \(name)")
    case let .rook(name, color):
            print(" - \(name)")
    case let .pawns(name, color):
            print(" - \(name)")
}