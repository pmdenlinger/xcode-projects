import UIKit

// Object classes

class Person {
    
    let givenName:  String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "USA"
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
        
        init( givenName: String, middleName: String, familyName: String ) {
            self.givenName  = givenName
            self.middleName = middleName
            self.familyName = familyName
        }
}

final class Friend: Person
{
    var whereWeMet: String?
    
    override var displayString: String{
        let meetingPlace = whereWeMet ?? "an unknown location"
        return "\(givenName) \(middleName) \(familyName) - met at \(meetingPlace)"
    }
}

final class Family: Person {
    
    let relationship: String
    
    init( givenName: String,
          middleName: String,
          familyName: String = "Barker",
          relationship: String) {
        
    self.relationship = relationship
    super.init(givenName: givenName,
               middleName: middleName,
               familyName: familyName)
    }
    
    override var displayString: String {
    return "\(super.displayString) - \(relationship)"
    }
}

let steve = Person( givenName: "Steve",
                    middleName: "Paul",
                    familyName: "Jobs" )

let sam = Friend( givenName: "Sam",
                  middleName: "Wow",
                  familyName: "Rowley" )
sam.whereWeMet = "Work together at Jaguar Land Rover"
                    
 let maddie = Family( givenName: "Maddeleine",
                      middleName: "Barker",
                      relationship: "Daughter" )

let mark = Family( givenName: "Mark",
                   middleName: "David",
                   familyName: "Pendlebury",
                   relationship: "Borther-in-law" )
mark.countryOfResidence = "UK"

print(steve.displayString)
print(sam.displayString)
print(maddie.displayString)
print(mark.displayString)

class videoGameReview {
    let videoGameTitle: String
    var starRating: Int // out of 5
    
    init ( videoGameTitle: String, starRating: Int ) {
        self.videoGameTitle = videoGameTitle
        self.starRating = starRating
    }
}

// Write a review
let monkeyIslandReview = videoGameReview( videoGameTitle: " The Secret of Monkey Island", starRating: 4 )

// Post it to social media
let referenceToReviewOnTwitter = monkeyIslandReview
let referenceToReviewOnFacebook = monkeyIslandReview

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

// Reconsider the review
monkeyIslandReview.starRating = 5

// The change is visible from anywhere with a reference to the object
print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)
                                    
                   
                        
                      
