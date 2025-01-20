import Cocoa

// Dictionaries

var dict1: Dictionary<String, Int>  // an uninitialized dictionary
var dict2: [String:Int] // an uninitialized dictionary

var companyZIPCode: [String:Int] = ["Company Name": 94102]
var sameCompanyZIPCode = ["Company Name": 94102]

// ===================== Accessing and Modifying Values

var movieRatings = ["Tron": 4, "War Games": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
   print("old rating: \(lastRating)")
   print("current rating: \(currentRating)")
}

// ===================== Adding and Removing Values

var movieRatings = ["Tron": 4, "War Games": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
   print("old rating: \(lastRating)")
   print("current rating: \(currentRating)")
}
movieRatings["Hackers"] = 5 // Create new key named hackers with a value of 5
movieRatings.removeValue(forKey: "Sneakers") // Remove Sneakers key-value pair
movieRatings["War Games"] = nil // setting value to nil also removes key-value pair
movieRatings

// ===================== Looping

var movieRatings = ["Tron": 4, "War Games": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
   print("old rating: \(lastRating)")
   print("current rating: \(currentRating)")
}
movieRatings["Hackers"] = 5 // Create new key named hackers with a value of 5
movieRatings.removeValue(forKey: "Sneakers") // Remove Sneakers key-value pair
movieRatings["War Games"] = nil // setting value to nil also removes key-value pair
movieRatings["Movie1"] = 1
movieRatings["Movie2"] = 2
for (key, value) in movieRatings {
   print("This movie \(key) was rated \(value)")
}
for movie in movieRatings.keys {
   print(movie)
}

// ===================== Looping

var movieRatings = ["Tron": 4, "War Games": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}
movieRatings["Hackers"] = 5 // Create new key named hackers with a value of 5
movieRatings.removeValue(forKey: "Sneakers") // Remove Sneakers key-value pair
movieRatings["War Games"] = nil // setting value to nil also removes key-value pair
movieRatings["Movie1"] = 1
movieRatings["Movie2"] = 2
for (key, value) in movieRatings {
    print("This movie \(key) was rated \(value)")
}
for movie in movieRatings.keys {
    print(movie)
}
var watchedMoviesAndRatings = Array(movieRatings)
var watchedMovies = Array(movieRatings.keys)

// =====================

var teamsDict = [String:Array<String>]()

for i in 1...4 {
    teamsDict["Team \(i)"] = ["Member 1", "Member 2", "Member 3"]
}

teamsDict.forEach({ team, members in
    print("\(team) members:")
    members.forEach( { member in
        print(member)
    })
    print()
})
