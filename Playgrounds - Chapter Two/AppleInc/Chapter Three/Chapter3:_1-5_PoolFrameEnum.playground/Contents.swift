import UIKit

enum Result {
    case win(congratulations: String)
    case lose(commiserations: String)
}

func printMessage(forResult result: Result) {
    if case Result.win(congratulations: let winMessage) = result {
        print("You won! \(winMessage)")
    } else if Result.lose(commiserations: let loseMessage) = result {
        print("You lost. \(loseMessage)")
    })
}

let result = Result.win(congratulations: "You're simply the best!")
printMessage(forResult: result) 
