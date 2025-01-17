import Cocoa

// Optionals

var errorCodeString: Optional<String>
errorCodeString = Optional("404")

// ================================

var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString)

// ================================ Unwrapping

var errorCodeString: String?
errorCodeString = "404"

if errorCodeString != nil {
   let error = errorCodeString!    //The exclamation mark here does what is called forced unwrapping.
   // Forced unwrapping accesses the value stored inside the Optional, which allows you to grab "404" and assign it to the constant
   // Its called forced because it assumes there is a value assigned
   print(error)
}

// ================================ Optional Binding

var errorCodeString: String?
errorCodeString = "404"

if let error = errorCodeString {
   print(error)
}

// ================================ Nested Optionals

var errorCodeString: String?
errorCodeString = "404"

if let error = errorCodeString {
   if let intError = Int(error){
       print("\(intError) : \(error)")
   }
}

// ================================ Multiple Optionals on If

var errorCodeString: String?
errorCodeString = "404"

if let error = errorCodeString, let intError = Int(error){
   print("\(intError) : \(error)")
}

// ================================ Multiple Optionals on If and an Additional Condition

var errorCodeString: String?
errorCodeString = "404"

if let error = errorCodeString, let intError = Int(error), intError == 404 {
   print("404 not found!")
}

// ================================ Optional Chaining & Modfying Optional in Place

var errorCodeString: String?
var errorDescription: String?
errorCodeString = "404"

if let error = errorCodeString, let intError = Int(error), intError == 404 {
   errorDescription = "\(intError + 200) : resource not found"
}

var upperCaseDescription = errorDescription?.uppercased()
upperCaseDescription?.append(" TRY AGAIN LATER")
upperCaseDescription

// ================================ The Nil Coalescing Operator (??)

var errorCodeString: String?
var errorDescription: String?
errorCodeString = "404"

if let error = errorCodeString, let intError = Int(error), intError == 404 {
    errorDescription = "\(intError + 200) : resource not found"
}

var upperCaseDescription = errorDescription?.uppercased()
upperCaseDescription?.append(" TRY AGAIN LATER")
let description = upperCaseDescription ?? "No error" // if the optional upperCaseDescription is nil then "No error" will be assigned to description
