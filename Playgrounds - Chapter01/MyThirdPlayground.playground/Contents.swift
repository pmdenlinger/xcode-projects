import UIKit

// Input parameters and output
func fullName(givenName: String,
              middleName: String,
              familyName: String) -> String
{
    return "\(givenName) \(middleName) \(familyName)"
}
    
    let myFullName = fullName(givenName: "Paul",
                              middleName: "M.",
                              familyName: "Denlinger")
    print(myFullName)

// Print full name with no output

func printFullName(givenName: String,
                   middleName: String,
                   familyName: String)
{
    print("\(givenName) \(middleName) \(familyName)")
}

// Return full name

func fullName() -> String
{
    return FullName(givenmae: "Paul",
                    middleName: "M.",
                    familyName: "Denlinger")
}

let personsFullName = fullName()

// Takes no parameters and returns no value
func printFullName()
{
    let personsFullName = fullName()
    print(personsFullName)
}
    

