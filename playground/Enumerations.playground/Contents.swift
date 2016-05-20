//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//Enumerations
//Basic Enumerations (without ":Int")
//Listing 14.1 Defining an enumeration

//Raw Value Enumerations
//Swift enums do not have an underlying integer type
//Listing 14.11 Using raw values (appending ":Int" to "enum TextAlignment")

//Listing 14.13 Specifying raw values
enum TextAlignment:Int {
    case Left = 20
    case Right = 30
    case Center = 40
//Listing 14.8 Adding a case
    case Justify = 50
    
}

//Listing 14.2 Creating an instance of TextAlignment
//var alignment: TextAlignment = TextAlignment.Left

//Listing 14.3 Taking advantage of type inference
var alignment = TextAlignment.Left

//Listing 14.4 Inferring the enum type
alignment = .Right

//Listing 14.5 Type inference when comparing values
/*if alignment == .Right {
    print("we should right-align the text!")
}*/

//Listing 14.8 Adding a case
alignment = .Justify

//Listing 14.12 Confirming the raw values
print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

//Listing 14.14 Converting raw values to enum types
// Create a raw value.
var myRawValue = 20 // should be let

//Listing 14.15 Trying a bad value
//myRawValue = 100

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed.
    print("\(myRawValue) has no corresponding TextAlignment case")
}

//Listing 14.6 Switching to switch
switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
//case .Center:
//Listing 14.7 Making center the default case
//default:
//Listing 14.9 Returning to explicit cases
case .Center:
    print("center aligned")
//Listing 14.10 Including all cases
case .Justify:
    print("justified")
}

//Listing 14.16 Creating an enum with strings
//Listing 14.17 Using default string raw values
enum ProgrammingLanguage: String {
    case Swift //= "Swift"
    case ObjectiveC = "Objective-C"
    case C //= "C"
    case Cpp = "C++"
    case Java //= "Java"
}
let myFavoriteLanguage = ProgrammingLanguage.Swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

//Methods
//Listing 14.18 Lightbulbs can be on or off
enum Lightbulb {
    case On
    case Off
    
    //Listing 14.19 Establishing temperature behaviors
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        case .Off:
            return ambient
        }
    }
    
    //Listing 14.21 Trying to toggle
    //Listing 14.22 Making toggle a mutating method
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

//Listing 14.20 Turning on the light
var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

//Listing 14.23 Turning off the light
bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

//Listing 14.24 Setting up ShapeDimensions
enum ShapeDimensions {
    //Listing 14.28 Setting up a Point
    // Point has no associated value - it is dimensionless
    case Point
    
    // Square's associated value is the length of one side
    case Square(Double)
    // Rectangle's associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    //Listing 14.26 Using associated values to compute area
    func area() -> Double {
        switch self {
        case Point:
            return 0

        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

//Listing 14.25 Creating shapes
var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)

//Listing 14.27 Computing areas
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")

//Listing 14.29 What is the area of a point?
var pointShape = ShapeDimensions.Point
print("point's area = \(pointShape.area())")