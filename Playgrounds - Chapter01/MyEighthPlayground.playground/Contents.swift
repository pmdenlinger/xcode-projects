import UIKit

protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    
    let birthName: PersonName
    let currentName: PersonName
    var countryOfResidence: String
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
    
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
//        Send person information to remove database
//        Once remote save is complete, it calls
//        saveComplete(Bool)
//        We'll fake it for the moment, and assume the save is complete.
        saveComplete(success: true)
    }
    func saveComplete(success: Bool) { saveHandler?(success)
    }
}

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

class Reminder: Saveable {
    var dateOfReminder: String
//    There is a better way to store dates,
//    but this is sufficient for our example.
    
    var reminderDetail: String // Ali's birthday
    init(date: String, detail: String) {
        dateOfReminder = date
        reminderDetail = detail
    }
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
            //        Send reminder information to remove database
            //        Once remote save is complete, it calls
            //        saveComplete(success: Bool)
            //        We'll fake it for the moment, and assume the save is complete.
        saveComplete(success: true)
    }
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}

class SaveManager {
    
    func save(_ thingToSave: Saveable) {
        thingToSave.saveToRemoteDatabase { success in
            print("Saved! Success: \(success)")
        }
    }
}

let birthdayReminder = Reminder(date: "2024-07-15", detail: "Maddie's birthday")
let saveManager = SaveManager()
saveManager.save(birthdayReminder)

let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given,
                          middleName: middle,
                          familyName: family)
    let person = Person(name: name)
    return person
}

let maddie = createPerson("Maddie", "Rose", "Smith")
    
