//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
str += "!"
print(str)

var lastname = "Bhatnagar"
print(lastname)

//2

//var numberOfStoplights = "Four"
//var numberOfStoplights: Int = 4
let numberOfStoplights: Int = 4
//numberOfStoplights += 2
var population: Int
population = 5422
let townName: String = "Knowhere"
let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights) stoplights."
/*The \() syntax represents a placeholder in the String literal that accesses an instances's value and places it within the new String. For example,
\(townName) accessess the constant townName's value and  places it within the new String instance.*/
print(townDescription)

//3
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else {
    /*if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town!"
    } else {
        message = "\(population) is pretty big!"
    }*/
    message = "\(population) is pretty big!"
}
/* add an aditional else if statement to the town-sizing code to see if your town's population is very large. Choose your own population thresholds. Set the
   message variale accordingly.
*/
//message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)
// === and !=== -> Evaluates whether the two instances point/do not point to the same reference

if !hasPostOffice {
    print("Where do we buy stamps?")
}

//4
print("The maximum Int value is \(Int.max)")
print("The minimum Int value is \(Int.min)")
print("The maximum value for a 32-bit integer is \(Int32.max)")
print("The maximum value for a 32-bit integer is \(Int32.min)")
//Also available are Int8, Int16, and Int64
print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min).")

let numberOfPages: Int = 10 // Declares the type explicitly
let numberOfChapters = 3    // Also of type Int, but inferred by the compiler
let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// Trouble ahead!
//let firstBadValue: UInt = -1
//let secondBadValue: Int8 = 200
/*The compiler reports that the two values you have typed in “overflow when stored into”
constants of type UInt and Int8, respectively. “Overflows when stored into…” means
that when the compiler tried to store your number into the type you specified, it did not fit
in the type’s allowed range of values. An Int8 can hold values from -128 to 127; 200 is
outside of that range, so trying to store 200 into an Int8 overflows.*/

print(10+20)
print(30-5)
print(5*6)

print(10 + 2 * 5) // 20, because 2 * 5 is evaluated first
print(30 - 5 - 5) // 20, because 30 - 5 is evaluated first
print((10 + 2) * 5) // 60, because (10 + 2) is now evaluated first
print(30 - (5 - 5)) // 30, because (5 - 5) is now evaluated first

print(11 / 3) // Prints 3
print(11 % 3) // Prints 2
print(-11 % 3) // Prints -2

var x = 10
x++
print("x has been incremented to \(x)")
x--
print("x has been decremented to \(x)")

x += 10 // Is equivalent to: x = x + 10
print("x has had 10 added to it and is now \(x)")
/*There are also shorthand operation-and-assignment combination operators for the other
basic math operations: -=, *=, /=, and %=.*/

let y: Int8 = 120
//let z = y + 10
let z = y &+ 10
print("120 &+ 10 is \(z)")
/*There are also overflow versions of the subtraction and multiplication operators: &- and
&*.*/

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // Uh-oh!
let c = a + Int16(b)

let d1 = 1.1 // Implicitly Double
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)
print(12.4 % 5.0)

/*The fact that floating-point numbers are inherently imprecise is an important difference
from integer numbers that you should keep in mind*/

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

//5
//Switch It Up
//Your first switch
var statusCode: Int = 404
var errorString: String
switch statusCode {
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not found"
default:
    errorString = "None"
}

//Switch cases can have multiple values
errorString = "The request failed with the error:"
switch statusCode {
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough
default:
    errorString += " Please review the request and try again."
}

//Ranges
//Switch cases can have single values, multiple values, or ranges of values
statusCode = 404
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, 1xx."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, 3xx."
case 400...417:
    errorString += " Client error, 4xx."
case 500...505:
    errorString += " Server error, 5xx."
default:
    errorString = "Unknown. Please review the request and try again."
}

//Value binding
//Using value binding
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode:
    errorString = "\(unknownCode) is not a known error code."
}

/*
Here you use string interpolation to pass statusCode into the errorString in each case.
When the statusCode does not match any of the values provided in the cases above, you create a temporary constant, called unknownCode, binding it to the value of statusCode. For example, if the statusCode was set to be equal to 200, then your switch would set errorString to be equal to: “200 is not a known error code.” Because unknownCode takes on the value of any status code that does not match the earlier cases, you no longer need an explicit default case. You declare a constant whose value is bound to the status code. This means that the final case by definition matches everything that has not already matched a case in the switch statement. The switch statement is, therefore, exhaustive.
Note that by using a constant, you fix the value of unknownCode. If you needed to do work on unknownCode, for whatever reason, you could have declared it with var instead of let. Doing so would mean, for example, that you could then modify unknownCode’s value within the final case’s body.
This example shows you the syntax of value binding, but does not really add much. The standard default case can produce the same result.
*/

//Reverting to the default case
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
default:
    errorString = "\(statusCode) is not a known error code."
}

//where clauses
//Using where to create a filter
statusCode = 204
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unexpected error encountered."
}

//Tuples and pattern matching
//Creating a tuple
statusCode = 418
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unknown error encountered."
}
let error = (statusCode, errorString)

//Accessing the elements of a tuple
error.0
error.1

//Naming the tuple’s elements
let error2 = (code: statusCode, error: errorString) //using error2 since error is a 'let' constant
error2.code
error2.error

//Pattern matching
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)
switch errorCodes {
case (404, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}

//switch vs. if/else
//Single case switch
let age = 25
switch age {
case 18...35:
    print("Cool demographic")
default:
    break
}

//if-case
if case 18...35 = age {
    print("Cool demographic")
}

//if-cases with where clauses
if case 18...35 = age where age >= 21 {
    print("In cool demographic and of drinking age")
}

//Challenge
let point = (x: 1, y: 4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && point.y > 0:
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && point.y < 0:
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && point.y < 0:
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered.")
}

//6
//for-in loops
var myFirstInt: Int = 0
for i in 1...5 {
    ++myFirstInt
    print(myFirstInt)
}
print("")
myFirstInt = 0

//Printing the changing value of i to the console
for i in 1...5 {
    ++myFirstInt
    print("myFristInt equals \(myFirstInt) at iteration \(i)")
}
print("")
myFirstInt = 0

//Replacing i with _
for _ in 1...5 {
    ++myFirstInt
    print(myFirstInt)
}
print("")
myFirstInt = 0

//for-case
//for-in loop with a case
for case let i in 1...100 where i % 3 == 0 {
    print(i)
}
print("")

//A classic for loop
for var i = 1; i < 6; ++i {
    ++myFirstInt
    print(myFirstInt)
}
print("")
myFirstInt = 0

//while loops
//A while loop
var i = 1
while i < 6 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}
print("")
myFirstInt = 0

/*
while shields > 0 {
// Fire blasters!
print("Fire blasters!")
}
*/

//repeat-while Loops
/*
repeat {
// Fire blasters!
print("Fire blasters!")
} while shields > 0
*/

//Control Transfer Statements, Redux
//Using continue
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
/*while shields > 0 {
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire blasters!")
    ++blasterFireCount
    ++spaceDemonsDestroyed
}*/

//Challenge
var fivetimes: Bool = false
while(!fivetimes)
{
    var count = 0
    for var i = 0; i <= 100; i+=2 {
        if count == 5 {
            fivetimes = true
            break;
        }
        count += 1
    }
}

//7
//Working with Strings
//Hello, playground
let playground = "Hello, playground"

//Creating a mutable string
var mutablePlayground = "Hello, mutable playground"

//Adding to a mutable string
mutablePlayground += "!"

//mutablePlayground’s Characters
for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}
print("")

//Using a Unicode scalar
let oneCoolDude = "\u{1F60E}"

//Using a combining scalar
let aAcute = "\u{0061}\u{0301}"

//Revealing the Unicode scalars behind a string
for scalar in playground.unicodeScalars {
    print("\(scalar.value) ")
}
print("")

//Canonical equivalence
//Using a precomposed character
let aAcutePrecomposed = "\u{00E1}"

//Checking equivalence
let d = (aAcute == aAcutePrecomposed) // true

//Counting elements
print("aAcute: \(aAcute.characters.count); aAcuteDecomposed: \(aAcutePrecomposed.characters.count)")
print("")

//Indices and ranges
//let index = playground[3] // 'l'??? --error
//Finding the fifth character
let fromStart = playground.startIndex
let toPosition = 4 // The first position is 0
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end] // 'o' or "let fifthCharacter = playground[playground.startIndex.advancedBy(4)]"

//Pulling out a range
let range = fromStart...end
let firstFive = playground[range] // 'Hello' or "let firstFive = playground[fromStart...end]"

//Silver challenge
let unicodeHello = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006f}"


//8
//Optionals
//Optional Types
//Declaring an optional type
var errorCodeString: String?
errorCodeString = "404" //not assigning a value to optional field logs nil to the console.

//Logging the value of the optional to the console
print(errorCodeString)
print("")

//Adding a condition
if errorCodeString != nil {
    let theError = errorCodeString! //The exclamation mark here does what is called forced unwrapping.
    print(theError)
    print("")
}

//Optional Binding
/*if let temporaryConstant = anOptional {
// Do something with temporaryConstant
} else {
// There was no value in anOptional; i.e., anOptional is nil
}*/
if let theError = errorCodeString {
    print(theError)
    print("")
}
/*you could have declared theError with the var keyword if you needed to manipulate the value inside the first branch of the conditional. if there is a value within the optional, then a temporary constant is made available for use in the block of code that is executed if the condition is evaluated as true*/

//Nesting optional binding
if let theError = errorCodeString {
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
        print("")
    }
}

//Unwrapping multiple optionals
if let theError = errorCodeString, errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)")
    print("")
}

//Optional binding and where clauses
if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
        print("\(theError): \(errorCodeInteger)")
        print("")
}

//Implicitly Unwrapped Optionals
var errorCodeString2: String! /* ! signifies that it is an implicitly unwrapped optional. the primary case concerns class initialization*/
errorCodeString2 = "404"
print(errorCodeString2)
print("")

//Optional Chaining
var errorDescription: String?
if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
    errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.")
}
var upCaseErrorDescription = errorDescription?.uppercaseString //used optional chaining The question mark appended to the end of errorDescription signals that this line of code initiates the optional chaining process
/*The question mark appended to the end of errorDescription signals that this line of code initiates the optional chaining process. If there is no value in errorDescription, then there is no string to uppercase. In that case, upCaseErrorDescription would be set to nil. This point demonstrates that optional chaining will return an optional.*/
errorDescription

//Modifying an Optional in Place
upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN.")
upCaseErrorDescription

//The Nil Coalescing Operator
//Using optional binding to parse errorCodeString
let description: String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error"
}

//Using the nil coalescing operator
let description2 = errorDescription ?? "No error"

//Changing errorCodeString
errorDescription = nil
let description3 = errorDescription ?? "No error"

//Collections and Functions
//Arrays
//Creating an Array
//var bucketList: Array<String>

//Changing the syntax
//var bucketList: [String]

//Initializing the array
//var bucketList: [String] = ["Climb Mt. Everest"]

//Using type inference
var bucketList = ["Climb Mt. Everest"]

//Hot air balloon adventure
bucketList.append("Fly hot air balloon to Fiji")

//So many ambitions!
bucketList.append("Watch the Lord of the Rings trilogy in one day")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")

//Removing an item from the array
bucketList.removeAtIndex(2)
//bucketList

//Counting items in the array
print(bucketList.count)

//Subscripting to find your top three items
print(bucketList[0...2])

//Using subscripting to append new information
bucketList[2] += " in Australia"
//bucketList

//Replacing an array item
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList

//Using a loop to append items from one array to another
bucketList = ["Climb Mt. Everest"]
var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]
for item in newItems {
    bucketList.append(item)
}

//Refactoring with the addition and assignment operator
bucketList = ["Climb Mt. Everest"]
newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]
bucketList += newItems

//Inserting a new ambition
bucketList.insert("Toboggan across Alaska", atIndex: 2)

//fixing array for comaprison (not in book)
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.removeAtIndex(3)
bucketList[3] += " in Australia"
bucketList

//Checking two arrays for equality
var myronsList = [
    "Climb Mt. Kilimanjaro",
    "Fly hot air balloon to Fiji",
    "Toboggan across Alaska",
    "Go on a walkabout in Australia",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]
let equal = (bucketList == myronsList)

//Immutable Arrays
let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel wrap"
]

//challenge
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
var q = 0
for item in toDoList {
    toDoList.insert(toDoList.removeLast(), atIndex: q)
    toDoList
    q += 1
}
toDoList

toDoList.reverse()

//Dictionaries
//Creating a Dictionary
//general syntax to create a Swift dictionary is as follows: var dict: Dictionary<KeyType, ValueType>

//different ways you can get an instance of Dictionary:
var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()
//Each of these four options yields the same result. In all four cases, the dictionary instance is empty: it has no keys and no values

//Populating a Dictionary
//Listing 10.1 Creating a dictionary
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

//Accessing and Modifying a Dictionary
//Listing 10.2 Using count
print("I have rated \(movieRatings.count) movies.")

//Listing 10.3 Reading a value from the dictionary
let darkoRating = movieRatings["Donnie Darko"]
//Whenever you subscript a Dictionary instance for a given key, the dictionary will return an optional matching the type of the Dictionary’s values.

//Listing 10.4 Modifying a value
movieRatings["Dark City"] = 5
movieRatings

//Listing 10.5 Updating a value
//This method, updateValue(_:forkey:), is useful because it gives you a handle on the last value to which the key mapped. There is one small caveat: updateValue(_:forKey:) returns an optional. This return type is handy because the key may not exist in the dictionary. Therefore, it is helpful to assign the return of the updateValue(_:forKey:) method to an optional of the type that you are expecting and use optional binding to gain access to the key’s old value.
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

//Adding and Removing Values
//Listing 10.6 Adding a value
movieRatings["The Cabinet of Dr. Caligari"] = 5

//Listing 10.7 Removing a value
movieRatings.removeValueForKey("Dark City") //this is code!
/*In the example above, you could have typed: let removedRating: Int? = movieRatings.removeValueForKey("Dark City"). Because removeValueForKey(_:) returns an optional of the type that was removed, removedRating is an optional Int. Placing the old value in a variable or constant like this can be handy if you need to do something with the old value.
 You can also remove a key-value pair by setting a key’s value to nil.*/

//Listing 10.8 Setting the key’s value to nil
//movieRatings["Dark City"] = nil //this is code!
//The result is essentially the same, but this strategy does not return the removed key’s value

//Looping
//Listing 10.9 Looping through your dictionary
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value).")
}
//Listing 10.10 Just the keys, please
for movie in movieRatings.keys {
    print("User has rated \(movie).")
}

//Immutable Dictionaries
//Listing 10.11 Creating an immutable dictionary
//an immutable dictionary that lists the track names of a short fictional album along with each track’s length in seconds
let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]
//The track names are the keys and the track lengths are the values

//Translating a Dictionary to an Array
//Listing 10.12 Sending keys to an array
let watchedMovies = Array(movieRatings.keys)


//Hamilton -> 45001, 45002, 45030, 45033, 45041
//Warren -> 45005, 45032, 45034, 45036, 45039
//Butler -> 45003, 45004, 45011, 45012, 45013
var ohio = ["Hamilton":[45001, 45002, 45030, 45033, 45041], "Warren":[45005, 45032, 45034, 45036, 45039], "Butler":[45003, 45004, 45011, 45012, 45013]]

var ziparray:[Int] = []
for value in ohio.values {
    for zipcode in value {
        ziparray.append(zipcode)
    }
}
print("Ohio has the following zip codes: \(ziparray)")

//Listing 11.1 Creating a set
var groceryBag = Set<String>()

//Listing 11.2 Adding to a set
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")


//Listing 11.3 Looping through a set
for food in groceryBag {
    print(food)
}

//Listing 11.4 Creating a set, redux
groceryBag = Set(["Apples", "Oranges", "Pineapple"]) //var groceryBag = Set<String>(["Apples", "Oranges", "Pineapple"]) or var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

//Listing 11.5 Has bananas?
let hasBananas = groceryBag.contains("Bananas")

//Unions
//Listing 11.6 Combining sets
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//Intersects
//Listing 11.7 Intersecting sets
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersect(roommatesGroceryBag)

//Disjoint
//Listing 11.8 Detecting intersections in sets
let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)

//Bronze Challenge
let myCities = Set(["Atlanta", "Chicago",
    "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

myCities.isSupersetOf(yourCities)


//Functions
//A Basic Function
//Listing 12.1 Defining a function
func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

//Function Parameters
//Listing 12.2 Using a parameter
/*func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting("Matt")*/

//Listing 12.3 A function for division
/*func divisionDescription(num: Double, den: Double) {
    print("\(num) divided by \(den) equals \(num / den)")
}
divisionDescription(9.0, den: 3.0)*/

//Listing 12.4 Using explicit parameter names
/*func divisionDescription(forNumerator num: Double, andDenominator den: Double) {
    print("\(num) divided by \(den) equals \(num / den)")
}
divisionDescription(forNumerator: 9.0, andDenominator: 3.0)*/

//Variadic parameters
//Listing 12.5 Greeting a group
//A variadic parameter takes zero or more input values for its argument. Functions can have only one variadic parameter, and it should typically be the final parameter in the list.
func printPersonalGreetings(names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings("Alex","Chris","Drew","Pat")

//Default parameter values
//Listing 12.6 Adding a default parameter value
/*func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") {
    print("\(num) divided by \(den) equals\(num / den)\(punctuation)")
}
divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!")*/

//In-out parameters
//in-out parameters cannot have default values, variadic parameters cannot be marked with inout
//Listing 12.7 An in-out parameter
var error3 = "The request failed:"
func appendErrorCode(code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error3)
error3

//Returning from a Function
//Listing 12.8 Returning a string
func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}
print(divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!"))

//Nested Functions and Scope
//Listing 12.9 Nested functions
func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

//Multiple Returns
//Listing 12.10 Sorting evens and odds
func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]() //initialize array
    var odds = [Int]() // initialize array
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

//Listing 12.11 Calling sortEvenOdd(_:)
let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortEvenOdd(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

//Optional Return Types
//Listing 12.12 Using an optional return
func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(("Matt",nil,"Mathias"))
if let theName = middleName {
    print(theName)
}

//Exiting Early from a Function
//Listing 12.13 Early exits with guard statements
func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)!")
}
greetByMiddleName(("Matt","Danger","Mathias"))

/*
 Function types are made up of the function’s parameter and return types. The function type for sortEvenOdd(_:) is expressed as: ([Int]) -> ([Int], [Int]). A function with no arguments and no return has the following type: () -> ().
 
 assign a function type to a constant:
 let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortEvenOdd
 */

//assign a function type to a constant
let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortEvenOdd

//Closure Syntax
//Listing 13.1 Starting with an array
var volunteerCounts = [1,3,40,32,2,53,77,13]

/*
 “sort(_:) is a method that takes a closure that takes two integers to compare and returns a Boolean value specifying which integer should come first. sort(_:) returns a new array of integers that have been ordered.”
 */
//Listing 13.2 Sorting the array
/*func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sort(sortAscending)*/

//Closure Expression Syntax
/*
 Closure syntax follows this general form:
 {(parameters) -> return type in
 // Code
 }
 */

//Listing 13.3 Refactoring your sorting code
/*let volunteersSorted = volunteerCounts.sort({
    (i: Int, j: Int) -> Bool in
    return i < j
})*/

//13.3 is the important one!

//Listing 13.4 Taking advantage of type inference
//let volunteersSorted = volunteerCounts.sort({ i, j in i < j })
/*Not all closure statements can omit the return keyword. This one can because it only has one expression (i < j). If more expressions were needed, an explicit return would be needed.*/

//Listing 13.5 Using shorthand syntax for arguments
//let volunteersSorted = volunteerCounts.sort({ $0 < $1 })

//Listing 13.6 Inline closure as the function’s final argument
let volunteersSorted = volunteerCounts.sort { $0 < $1 } //“trailing closure syntax"

//Functions as Return Types
/*Function types are frequently used to determine what sort of closure you need to satisfy a given parameter’s type or what sort of function needs to be returned.*/
//Listing 13.7 Return to Knowhere
/*func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
        return toLights + lightsToAdd
    }
    return buildRoads
}*/

//Listing 13.8 The roads to Knowhere
/*var stoplights = 4
let townPlan = makeTownGrand()
stoplights = townPlan(4, stoplights)*/
//print("Knowhere has \(stoplights) stoplights.")

//Functions as Arguments
//Listing 13.9 Adding budget considerations
func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}
var stoplights = 4
/*if let townPlan = makeTownGrand(10001, condition: evaluateBudget) {
    stoplights = townPlan(4, stoplights)
}*/

//Listing 13.10 Building more roads.
if let townPlan = makeTownGrand(10001, condition: evaluateBudget) {
    stoplights = townPlan(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")

//Closures Capture Values
//Listing 13.11 Tracking growth
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)

//Listing 13.12 The population is booming
growBy500()
growBy500()
growBy500()
currentPopulation += growBy500() // currentPopulation is now 7422

//Closures Are Reference Types
//Listing 13.13 Duplicate growth
let anotherGrowBy500 = growBy500
anotherGrowBy500() // totalGrowth now equal to 2500

//Listing 13.14 Another population to track
var someOtherPopulation = 4061981
let growBy10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growBy10000()
currentPopulation

//Functional Programming
//Higher-order functions
//Listing 13.15 Setting populations by precinct
let precinctPopulations = [1244, 2021, 2157]

//Listing 13.16 Using map(_:) to estimate population
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

//Listing 13.17 Filtering an array
let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

//Listing 13.18 Reducing an array to a single value
let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection






















