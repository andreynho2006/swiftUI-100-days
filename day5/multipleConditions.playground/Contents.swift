import Cocoa

let age = 16
if age >= 18 {
    print("You can vote in the next election.")
}
if age < 18 {
    print("Sorry, you're too young to vote.")
}
//  Swift provides us with a more advanced condition that lets us add an else block to our code – some code to run if the condition is not true.
let age1 = 16
if age1 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}
//  can have just one of these if you want, or have multiple else if, and even combine else if with an else if needed
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

// check more than one thing
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}
// use && to combine two conditions together, and the whole condition will only be true if the two parts inside the condition are true.
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
//  || will make a condition be true if either subcondition is true
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
