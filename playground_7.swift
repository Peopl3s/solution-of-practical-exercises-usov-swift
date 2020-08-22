var myFavorites = (film: "Coco", number: 20, dish: "Pizza")
let (fFilm, fNum, fDish) = myFavorites
var myFavorites2: (film: String, number: Int, dish: String) = ("Iron Man", 7, "Meat")
var tmpTuple: (String, Int, String)

tmpTuple = myFavorites
myFavorites = myFavorites2
myFavorites2 = tmpTuple

var newTuple: (Int, Int, Int) = (myFavorites.1, myFavorites2.number, myFavorites.number - myFavorites2.number)
print(newTuple)
