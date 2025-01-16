import Cocoa

// ======== Chapter 1

var greeting = "Hello "
var name = "Beni"
greeting += name

// ======== Chapter 2

// implicit assigning a string
var numberOfLights = "Four"
// explicit assigning an int
var intNumberOfLights: Int = 4
intNumberOfLights += 2
// assigning a constant
let constNumberOfLights = 4 // cannot change it's value afterwards
// uninitialized Int
var population: Int
population = 99999
let townName: String = "Knowhere"
let elevation: Int = 253
// string interpolation
let townDescription: String = "\(townName) has a population of \(population) citizens and \(constNumberOfLights) traffic lights, it lies \(elevation)m above the sea level"
print(townDescription)

// ======== Chapter 3

var message: String
let hasPostOffice: Bool = true
// if/else conditions
if population < 10000 {
    message = "This is a small town."
} else if population < 5000{
    message = "Medium town"
} else {
    message = "Population is very big"
}
print("Message 1: \(message)")
// ternary operator
message = population < 10000 ? "small town" : "big town"
print("Message 2: \(message)")
if !hasPostOffice{
    print("where do we but stamps?!")
}

// ======== Chapter 4

print("Maximum Int Value is \(Int.max)")
print("Minimum Int Value is \(Int.min)\n")
print("Maximum Int32 Value is \(Int32.max)")
print("Minimum Int32 Value is \(Int32.min)\n")
print("Maximum Unsigned Int Value is \(UInt.max)")
print("Minimum Unsigned Int Value is \(UInt.min)\n")

let intValue: Int = 10
let int32Value: Int32 = 32
let unsignedIntValue: UInt = UInt.max
var int8Value: Int8 = 127
// int8Value += 1 gives error 127 is max Int8(2^8) number
10 + 20
// 10 +20 produces error same goes for every other operand
// overflow operator
let overFlownVar = int8Value &+ 1 // overflows the number without throwing error resulting in 127 + 1  = -128

// let newNumber = intValue + int32Value  will throw error two different types
let newNumber = intValue + Int(int32Value) //casting Int32 to Int

let d1 = 1.1
let d2: Double = 1.1 // 64 bit floating point number
let f2: Float = 100.3 // 32 bit floating point number

let float: Float = 11 / 3
let float1 = 11.0 / 3.0
let double: Double = 11 / 3

if d1 == d2 {
    print("\(d1) is equal to \(d2)")
}
print("d1 + 0.1 = \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

// defining a range of numbers
let rangeOfNumbers = 1000
let ticketNumbers = 1 ... rangeOfNumbers
let ticketNumbers1 = 1 ..< rangeOfNumbers

// entering binary values
let binaryFail = 10010101
let binaryInt = 0b10010101 // ad 0b before 10010101 for swift to recognize it as a binary number

// sciencetific numbers
let sciencetificInt = 1.66e5
let sciencetificFloat = 1.66e-2

// hexadecimal numbers
let hexLiteral = 0xff
let hexSpeak = 0x8A332D

// you can use underscore to make large numbers more readable
let bigNumber = 123_673_344_433

// ======= Chapter 5

var statusCode: Int = 1000
var errorString: String = ""

switch statusCode {
case 401: // you can also type switch: 401 ... 403:
    errorString = "Error 401"
    fallthrough // execute the next case without checking its condition
case 402 ... 415:
    errorString += " 4xx"
case let code where code < 100 || code >= 600: // default case can be replaced with variable to get the unexpected switch value
    errorString = "\(code) is an illegal status code" // value binding
default:
    errorString = "Unexpected error"
}
print(errorString)

// creating a tuple
var clientName: String = "John"
var clientAge: Int = 25
let clientInfo: (name: String, age: Int) = (clientName, clientAge)
let clientInfo1 = clientInfo.0
let clientInfo2 = clientInfo.1
let clientInfo11 = clientInfo.name
let clientInfo21 = clientInfo.age

switch clientInfo {
case ("John", 25):
    print("Client name is John and his age is 25")
case ("John", _):
    print("Client name is John, we don't care about the age")
case (_, 25):
    print("Client age is 25, we dont caree about the name")
default:
    print("idk")
}

var client: (name: String, surname: String, age: Int)
client = ("John", "Doe", 25)

// if-case
if case 18...35 = clientAge, clientAge >= 25, clientAge < 30 { // you can have multiple cases
    print("Cool demographic and can rent a car and not in their thirties")
}

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

