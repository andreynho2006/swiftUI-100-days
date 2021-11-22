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
