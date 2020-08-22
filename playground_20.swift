class Chessman {
    enum ChessmanType {
        case king
        case castle
        case bishop
        case pawn
        case knight
        case queen
    }
    enum ChessmanColor {
        case black
        case white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure:Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    init(type: ChessmanType, color: ChessmanColor, figure:Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num:coordinates.1)
    }
    func setCoordinates(char c:String, num n: Int){
        self.coordinates = (c, n)
    }
    func kill(){
        self.coordinates = nil
    }  
}

class gameDesk {
    var desk: [Int:[String:Chessman]] = [:]
    init(){
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    subscript(alpha: String, number: Int) -> Chessman? {
        get{
            if let chessman = self.desk[number]![alpha] {
                return chessman
             }
            return nil
        }
        set{
            self.setChessman(chess: newValue!, coordinates:(alpha, number))
         }
    }
    
    func setChessman(chess: Chessman, coordinates: (String, Int)){
        if let oldCoordinates = chess.coordinates 
        {
               if let cheesman = desk[oldCoordinates.1]![oldCoordinates.0]
               {
                        cheesman.kill()
                       
                } 
                desk[oldCoordinates.1]![oldCoordinates.0] = nil
        }
        self.desk[coordinates.1]![coordinates.0] = chess
        chess.setCoordinates(char: coordinates.0, num:coordinates.1)
    }
    
    func printDesk(){
        for i in 1...8 {
            print(i,"  ", terminator:"")
            for j in ["A", "B", "C", "D", "E", "F", "G", "H"] {
            if let chessFig = self[j, i]{
                print("", chessFig.figureSymbol, terminator:"")
            } else {
            print(" _ ", terminator:"")
            }
            }
            print()
        }
        print("     A  B  C  D  E  F  G  H")
    }
}

var game = gameDesk()
var QueenBlack = Chessman(type: .queen, color: .black, figure:"Q", coordinates: ("A", 6))
game.setChessman(chess: QueenBlack, coordinates: ("A",3))
game["C",5] = QueenBlack
game.printDesk()
