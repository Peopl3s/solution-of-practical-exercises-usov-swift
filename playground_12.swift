// Task 1
typealias Chessman = [String : (alpha: Character, num:Int)?] 
var Chessmans: Chessman = ["White King":("A", 1), "White Queen":nil, "White Knight":("B", 8)] 
func chessAnalizer(figures: Chessman) -> Void {
     for chess in figures{
        if chess.value != nil{
            var (char, num) = chess.value!
            print(char, " ", num)
        } else {
            print("Absence on the playing field")
        }
    }
}
chessAnalizer(figures: Chessmans)

// Task 2 
func changeChess(figures: inout Chessman, nameFigure: String, coordsFigure: (Character, Int)?) -> Void {
    if figures.keys.contains(nameFigure){
        figures.updateValue(coordsFigure, forKey: nameFigure)
    } else {
        figures[nameFigure] = coordsFigure
    }
}
changeChess(figures: &Chessmans, nameFigure: "White Queen", coordsFigure: ("Q", 9))
chessAnalizer(figures: Chessmans)
