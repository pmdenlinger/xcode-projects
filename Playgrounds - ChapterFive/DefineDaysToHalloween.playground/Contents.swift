import Foundation

func daysToHalloween(from date: Date) -> Int {
    let calendar = Calendar.current
    let year = calendar.component(.year, from: date)
    
    // Create a date for October 31st of the current year
    var halloweenComponents = DateComponents()
    halloweenComponents.year = year
    halloweenComponents.month = 10
    halloweenComponents.day = 31
    
    var halloweenDate = calendar.date(from: halloweenComponents)!
    /*If Halloween has already passed this year, use next year*/
    if date > halloweenDate {
        halloweenComponents.year = year + 1
        halloweenDate = calendar.date(from: halloweenComponents)!
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.allowedUnits = [.day]
    componentFormatter.unitsStyle = .full
    componentFormatter.zeroFormattingBehavior = .dropAll
    
    
    guard let halloweenDate = calendar.date(from: halloweenComponents) else {
        return -1 // Return -1 if the date creation fails
    }
    
    // Calculate the difference in days
    let components = calendar.dateComponents([.day], from: date, to: halloweenDate)
    
    return components.day ?? -1 // Return -1 if the calculation fails
}

// Example usage:
let today = Date()
let daysRemaining = daysToHalloween(from: today)
print("Days to Halloween: \(daysRemaining)")
//             Form {






