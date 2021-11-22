import Cocoa
// array of strings
var beatles = ["John", "Paul", "George", "Ringo"]
// aarray of integers
let numbers = [4, 8, 15, 16, 23, 42]
// array of doubles
var temperatures = [23.4, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")


// NOT ALLOWED - TYPE SAFETY
// temperatures.append("Cris")
// let firstBeatle = beatles[0]
// let firsyNumber = numbers[0]
// let notAllowed = firstBeatles + firstNumber













var scores = Array<Int>()
scores.append(100)
scores.append(50)
scores.append(25)
print(scores[1])

// var albums = Array<String>()
var albums = ["Folkrore"]
albums.append("Blues")
albums.append("Rock")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Budapest", "Rome", "Tokyo"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let presidentReversed = presidents.reversed()
print(presidentReversed)


// store and find data in dictionaries

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
// This kind of code would cause serious problems
// there’s no guarantee that item 2 is even there, particularly because we made the array a variable
// print("Location: \(employee[2])")


// we’re now being really clear: the name is Taylor Swift, the job is Singer, and the location is Nashville. Swift calls the strings on the left – name, job, and location – the keys to the dictionary, and the strings on the right are the values.
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//OPTIONALS
print(employee2["password"])
print(employee2["status"])
print(employee2["manager"])

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"] = "Penguin"
