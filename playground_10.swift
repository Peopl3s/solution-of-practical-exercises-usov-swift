typealias Chessman = [String : (alpha: Character, num:Int)?] 
var Chessmans: Chessman = ["White King":("A", 1), "White Queen":nil, "White Knight":("B", 8)] 



if Chessmans["White King"]! != nil {
    var (char, num) = Chessmans["White King"]!!
    print(char, " ", num)
} else {
    print("Absence on the playing field")
}

if var (char, num) = Chessmans["White Queen"]! {
    print(char, " ", num)
} else {
    print("Absence on the playing field")
}