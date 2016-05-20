//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//Listing 15.18 A simple greeting function
func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

//Listing 15.19 Using greetName(_:withGreeting:)
let personalGreeting = greetName("Matt", withGreeting: "Hello,")
print(personalGreeting)

//Listing 15.20 Curried greetingForName(_:)
func greetingForName(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

//Listing 15.21 Using the curried function
let greeterFunction = greetingForName("Matt")
let theGreeting = greeterFunction("Hello,")
print(theGreeting)

//Listing 15.22 A more concise curried function
func greeting(greeting: String)(name: String) -> String {
    return "\(greeting) \(name)"
}
let friendlyGreeting = greeting("Hello,")
let newGreeting = friendlyGreeting(name: "Matt")
print(newGreeting)

//Listing 15.23 Creating a Person
struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    mutating func changeName(fn: String, ln: String) {
        firstName = fn
        lastName = ln
    }
}

//Listing 15.24 Creating a new instance of Person
var p = Person()

//Listing 15.25 Instance methods are curried functions
//let changer = Person.changeName
//changer holds a function whose only argument is an instance of the Person struct passed in as an inout parameter. This function returns a function that takes two arguments, a String for the new first name and a String for the new last name. The resulting function returns nothing.

//a mutating function is simply a curried function whose first argument is self, passed in as an inout parameter. Because value types are copied when they are passed, for nonmutating methods self is actually a copy of the value. In order to make changes, self needs to be declared as inout, and mutating is the way Swift allows you to accomplish that.

//Listing 15.26 changer in action
//changer(&p)("John", ln: "Gallagher")
//p.firstName // John

//Listing 15.27 Using changeName(_:ln:) instead of changer
p.changeName("John", ln: "Gallagher")
p.firstName
