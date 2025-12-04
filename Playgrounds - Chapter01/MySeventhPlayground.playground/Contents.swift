import UIKit

struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}

class Person {
    
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location:  \(countryOfResidence)"
    }
    
        
}

// No input, no output
let printAuthorsDetails: () -> Void = {
    let name = PersonName(givenName: "Chris",
                          middleName: "Brian",
                          familyName: "Barker")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
printAuthorsDetails()

// No input, Person output
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Chris",
                          middleName: "Brian",
                          familyName: "Barker")
    let author = Person(name: name)
    return author
}
let author1 = createAuthor()
print(author1.displayString)

// String inputS, no output




    
