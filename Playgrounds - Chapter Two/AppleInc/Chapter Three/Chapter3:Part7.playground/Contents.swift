

enum VideoGameReviewClass {
    case bad
    case average
    case good
    case brilliant
}

enum ClassificationState {
    case initial
    case classifying
    case complete
}

class VideoGameReviewClassifier {
    
    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> VideoGameReviewClass {
        state = .classifying
        
        defer {
            state = .complete
        }
        
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3{
            return .average
        } else {
            return .bad
        }
    }
    
}

let classifier = VideoGameReviewClassifier()
let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
