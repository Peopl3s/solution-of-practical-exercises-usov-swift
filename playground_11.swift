// Task 1
var students: [String: [String: UInt]] = ["Petrov": ["23.07": 5, "25.07":4], 
                                        "Ivanov": ["30.07": 3, "29.07":4],
                                        "Sidorov": ["24.07": 4, "26.07":4]]
var avgGroupScore: Double = 0
for student in students{
    var score: UInt = 0
    for (_, mark) in student.value{
        score += mark
    }
    print("\(student.key) avg score: \(Double(score) / 2)")
    avgGroupScore += Double(score) / 2
}
print("Avg group score: \(Double(avgGroupScore / 3))")

// Task 2 
typealias Chessman = [String : (alpha: Character, num:Int)?] 
var Chessmans: Chessman = ["White King":("A", 1), "White Queen":nil, "White Knight":("B", 8)] 


for chess in Chessmans{
    if chess.value != nil{
        var (char, num) = chess.value!
        print(char, " ", num)
    } else {
        print("Absence on the playing field")
    }
}


for chess in Chessmans{
    if var (char, num) = chess.value {
        print(char, " ", num)
    } else {
        print("Absence on the playing field")
    }
}
