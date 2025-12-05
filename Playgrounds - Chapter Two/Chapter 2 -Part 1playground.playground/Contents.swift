import UIKit
import Foundation

let ratingAndDisplayString = normalizedStarRating(forRating: 5, ofPossibleTotal: 10)
let ratingNumber = ratingAndDisplayString.0
print(ratingNumber)

let ratingString = ratingAndDisplayString.1
print(ratingString)


func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float)
-> (Int, String) {
    
    let rating = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5) // rounds to the nearest Int
    let numberOfStars = Int(roundedRating) // turns a Float into an Int
    let ratingString = "\(numberOfStars) Star Game"
    return (numberOfStars, ratingString)
    
}
