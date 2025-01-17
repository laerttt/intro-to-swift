import Cocoa

// ====== Chapter 6

// for loop
var number: Int = 0
for i in 1...5 {
    number += i
    //1
    //3
    //6
    //10
    //15
}
for _ in 2...5 {
    number += 1
    //16
    //17
    //18
    //19
}
// add all odd numberes from 1 to 30
var nummer: Int = 0
for i in 1...30 where i % 2 != 0 {
    nummer += i
    //225
}

// while loops
var int: Int = 0
var x = 0
while x < 10 {
    int += x
    x += 1
}
int = 0
x = 0
repeat {
    int += x
    x += 1
} while x < 10

// control transfer statements in loops
let playBlasterGame: Bool = false
if playBlasterGame {
    var shields = 5
    var blastersOverheating = false
    var blasterFireCount = 0
    var spaceDemonsDestroyed = 0
    while shields > 0 {
        if spaceDemonsDestroyed == 20 {
            print("You beat the game")
            break // break the loop game won
        }
        if blastersOverheating {
            print("Blasters overheated! 5 second cooldown...")
            sleep(5)
            if Int.random(in: 1...100) < 70 {
                shields -= 1
                print("Lost 1 Shield")
            }
            print("Blasters ready")
            sleep(1)
            blastersOverheating = false
            blasterFireCount = 0
        }
        if blasterFireCount > 5 {
            blastersOverheating = true
            continue // jumps back to the begining of the loop
        }
        print("firing")
        blasterFireCount += 1
        sleep(1)
        spaceDemonsDestroyed += 1
    }
}
// fizz buzz game from 1 to 10
let fizzBuzzGame: Bool = false
if fizzBuzzGame {
    for i in 1...20 {
    // ex1 using ternary operation
    //    i % 3 == 0 ? i % 5 == 0 ? print("FIZZ BUZZ") : print("FIZZ") : i % 5 == 0 ? print("BUZZ") : print(i)
    // ex2 using if/else
    //    if i % 3 == 0 && i % 5 == 0 {
    //            print("FIZZ BUZZ")
    //        } else if i % 3 == 0 {
    //            print("FIZZ")
    //        } else if i % 5 == 0 {
    //            print("BUZZ")
    //        } else {
    //            print(i)
    //    }
    // ex3 using switch statement with tuple
        var tuple: (x: Int, y: Int) = (i % 3, i % 5)
        switch tuple {
        case (0,0):
            print("FIZZ BUZZ")
        case (0,_):
            print("FIZZ")
        case (_,0):
            print("BUZZ")
        default:
            print(i)
        }
    }
}

// ====== Chapter 7

let immutableString: String = "Hello World!"
// accessing a char in a string spr jerm btw
let ind = immutableString.index(immutableString.startIndex, offsetBy: 3)
immutableString[ind] // l
immutableString.count // 12 chars in immutableString

var mutableString: String = "Hello World"
// pulling out a range
let start = mutableString.index(immutableString.startIndex, offsetBy: 1)  // specify start index
let end = mutableString.index(immutableString.startIndex, offsetBy: 4)  // specify end index
let range = start...end // set range
let subString = mutableString[range]    // pull range ouput: ello
mutableString[...end]   // pull range from begining to specified index output: hello
mutableString = "TEST"
mutableString += "!\n\"\(immutableString)\n"
mutableString.count // 20

// raw string escape characters are ignored
mutableString += #"!\n\"\(immutableString)\n"#

// string is a collection of characters
// the explicit Character type annotation is unnecessary
var emptyString: String = ""
for c: Character in mutableString {
    emptyString += String(c)
}
// Unicode
let snowman = "\u{2603}"
let a = "\u{0061}"
let acute = "\u{0301}"
let aAcute = a+acute //prints à
let aAcute1 = "\(a)\(acute)" //prints à
let aAcute2 = "\u{0061}\u{0301}" //prints à
let aAcutePrecomposed = "\u{00E1}" //prints à

aAcute == aAcutePrecomposed // true
"\u{0061}\u{0301}" == "\u{00E1}" // true
// prints unicode value for every character in immutableString var
for scalar in immutableString.unicodeScalars {
//    print("\(scalar.value)")
}
var testString: String = "Hello"
var testString2: String = ""

for x in testString.unicodeScalars {
    testString2 += "{"
    testString2 += String(x.value, radix: 16)
    testString2 += "}"
}
// multiline strings
let banner = """
          __,
         (           o  /) _/_
          `.  , , , ,  //  /
        (___)(_(_/_(_ //_ (__
                     /)
                    (/
        """

