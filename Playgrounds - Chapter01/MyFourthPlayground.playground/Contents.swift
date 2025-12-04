import UIKit

// Default parameter values

func fullName(givenName: String, middleName: String, familyName: String = "Smith") -> String
{
    return "\(givenName) \(middleName) \(familyName)"
}

let william = fullName(givenName: "William", middleName: "Henry")
print(william)  // Output: William Henry Smith

let emma = fullName(givenName: "Emma", middleName: "Louise", familyName: "Johnson")
print(emma)  // Output: Emma Louise Johnson

let oliver = fullName(givenName: "Oliver", middleName: "", familyName: "Smith")
print(oliver)  // Output: Oliver  Smith


// Parameter overloading
func combine(_ string1: String, _ string2: String) -> String
{
    return "\(string1) \(string2)"
}

func combine(_ number1: Int, _ number2: Int) -> Int
{
    return number1 + number2
}

let combinedStrings = combine("Hello", "World")
print(combinedStrings)  // Output: Hello World

let combinedNumbers = combine(5, 10)
print(combinedNumbers)  // Output: 15
