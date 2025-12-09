import UIKit

enum ClassificationState {
    case initial
    case classifying
    case complete
}

enum VideoGameReviewClass {
    case bad
    case average
    case good
    case brilliant
}

class VideoGameReviewClassifier {

    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> VideoGameReviewClass {
        
        precondition(state == .initial, "Classifier state must be initial before classifying")
        
        state = .classifying
        
        defer {
            state = .complete
        }
        
        if stars > 8 && stars <= 10 {
            return .brilliant
        } else if stars > 6 && stars <= 8 {
            return .good
        } else if stars > 4 && stars <= 6 {
            return .average
        } else if stars > 0 {
            return .bad
        } else {
            fatalError("Stars must be between 1 and 10")
        }
    }
            
}

let classifier = VideoGameReviewClassifier()
let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
