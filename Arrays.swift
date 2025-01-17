import Cocoa

// Array Declaration
var array: Array<Int> = []  // Empty Int array (initialized)
var array1: [Int] = []  // Shorthand declaration Empty Int array (initialized)
var bucketList: Array<String>   // Uninitialized array (String)
var bucketList1: [String] = ["Climb Mt. Everest"]   // Shorthand Declaration
var bucketList2 = ["Climb Mt. Everest"] // String array implicit declaring
var arrayUsingConstructor = [String]()

bucketList = ["Climb Mt. Everest"]
bucketList.append("Read War and Peace")
bucketList.append(contentsOf: ["Learn Swift", "Travel the World"])  // Adding multiple elements
bucketList.count
bucketList.remove(at: 0)
bucketList[...2]    // items indexed 0 1 2
bucketList[2]   // "Travel the World"
bucketList[2] += " with friends"
bucketList[2]   //"Travel the World with friends"
bucketList[0] = "Travel to Dubai"   // Replacing "Read War and Peace" with "Travel to Dubai"
bucketList.insert("Go paragliding", at: 1)
var newAdventures = ["Adventure 1",
                     "Adventure 2",
                     "Adventure 3"]
bucketList += newAdventures // You can add two arrays together
for i in bucketList {
    print(i)    // Print array items
}
// Array Equality (array order matters)
var numArray: [Int] = [1, 2, 3]
var numArray1: [Int] = [1, 3, 2]
var numArray2: [Int] = [1, 2, 3]
numArray == numArray1   // false
numArray == numArray2   // true
