import Cocoa

// basic string interpolation
let age = 38
print("You are \(age)")

let age1 = 35
print("Hi, I'm \(age1).")

// Using the new string interpolation system in Swift 5.0 we can extend String.StringInterpolation to add our own custom interpolations, like this

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Int) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut

        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
    
    mutating func appendInterpolation(_ value: Date) {
        let formatter = DateFormatter()
        formatter.dateStyle = .full

        let dateString = formatter.string(from: value)
        appendLiteral(dateString)
    }
    
    mutating func appendInterpolation(twitter: String) {
        appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
    }
    
    mutating func appendInterpolation(format value: Int, using style: NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style

        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ values: [String], empty defaultValue: @autoclosure () -> String) {
        if values.count == 0 {
            appendLiteral(defaultValue())
        } else {
            appendLiteral(values.joined(separator: ", "))
        }
    }
}

print("Hi, I'm \(age1).")

// You’ll see that Swift prints the date as something like “2019-02-21 23:30:21 +0000”. We can smarter than up with a custom date interpolation.

print("Today's date is \(Date()).")
print("You should follow me on Twitter: \(twitter: "twostraws").")
print("Hi, I'm \(format: age, using: .spellOut).")
let names = ["Malcolm", "Jayne", "Kaylee"]
print("Crew: \(names, empty: "No one").")

// Adding interpolations for custom types
struct Person: Encodable {
    var type: String
    var action: String
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ person: Person) {
        appendLiteral("I'm a \(person.type) and I'm gonna \(person.action).")
    }
}

let hater = Person(type: "hater", action: "hate")
print("Status check: \(hater)")
print(hater)

// We can combine custom type with multiple parameters
extension String.StringInterpolation {
    mutating func appendInterpolation(_ person: Person, count: Int) {
        let action = String(repeating: "\(person.action) ", count: count)
        appendLiteral("\n\(person.type.capitalized)s gonna \(action)")
    }
    
    // We could write a simple debug interpolation that accepts any kind of Encodable object and prints it as JSON
//    mutating func appendInterpolation<T: Encodable>(debug value: T) {
//        let encoder = JSONEncoder()
//        encoder.outputFormatting = .prettyPrinted
//
//        if let result = try? encoder.encode(value) {
//            let str = String(decoding: result, as: UTF8.self)
//            appendLiteral(str)
//        }
//    }
    
    mutating func appendInterpolation<T: Encodable>(debug value: T) throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        let result = try encoder.encode(value)
        let str = String(decoding: result, as: UTF8.self)
        appendLiteral(str)
    }
}

let player = Person(type: "player", action: "play")
let heartBreaker = Person(type: "heart-breaker", action: "break")
let faker = Person(type: "faker", action: "fake")

print("Let's sing: \(player, count: 5) \(hater, count: 5) \(heartBreaker, count: 5) \(faker, count: 5)")


//print("Here's some data: \(debug: faker)")
print(try "Status check: \(debug: hater)")
