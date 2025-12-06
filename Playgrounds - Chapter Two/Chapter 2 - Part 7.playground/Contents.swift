import UIKit

class userManager {
    var currentUserName: String = "Guybrush Threepwood" {
        willSet (newUserName) {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        didSet(oldUserName) {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")            
        }
    }
}

let manager = userManager()
manager.currentUserName = "Elaine Marley"

manager.currentUserName = "Ghost Pirare LeChuck"
