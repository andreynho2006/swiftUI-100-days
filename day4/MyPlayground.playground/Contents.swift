import Cocoa
//
//
// Complex data type 2 - Type annotation
//
//
let surname: String  = "Lasso"
var score: Int = 0

//let surname  = "Lasso"
//var score = 0

var score1: Double = 0
print(score1)

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Blues Eye",
    "Foundations",
    "Girl, Women, Other"
])

var soda: [String] = ["Coke", "Sprite", "Fanta"]
var soda1 = ["Coke", "Sprite", "Fanta"]

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.dark
style = .system

let username: String
// lots of code logic
username = "@twostraws"
// lots of code
print(username)

//let score: Int = "zero"
