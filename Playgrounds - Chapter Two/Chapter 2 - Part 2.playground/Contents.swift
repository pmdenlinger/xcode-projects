import UIKit
import Foundation

var gamesToPlay = [String]()

gamesToPlay.append("The Secret of Monkey Island")
gamesToPlay.append("Half Life 2")
gamesToPlay.append("Alien Isolation")

print(gamesToPlay[0])
print(gamesToPlay[1])
print(gamesToPlay[2])

print(gamesToPlay.count)

gamesToPlay.insert("Breath of the Wild", at: 2)

print(gamesToPlay.count)
print(gamesToPlay)
let firstGameToPlay = gamesToPlay.first ?? ""
print(firstGameToPlay)
let lastGameToPlay = gamesToPlay.last ?? ""
print(lastGameToPlay)

let secondMovieToWatch = gamesToPlay[1]
print(secondMovieToWatch)

gamesToPlay[1] = "Half Life 2 (2004)"
print(gamesToPlay.count)
print(gamesToPlay)

let graphicAdventureGames: [String] = ["Monkey Island 2", "Loom", "Sam & Max"]

gamesToPlay = gamesToPlay + graphicAdventureGames
print(gamesToPlay.count)
print(gamesToPlay)

var batmanGames = Array<String>(repeating: "Batman: ", count: 3)
batmanGames[0] = batmanGames[0] + "Arkham Asylum"
batmanGames[1] = batmanGames[1] + "Arkham City"
batmanGames[2] = batmanGames[2] + "Arkham Knight"

gamesToPlay.replaceSubrange(2...4, with: batmanGames)
print(gamesToPlay.count)
print(gamesToPlay)

gamesToPlay.remove(at: 6)
print(gamesToPlay.count)
print(gamesToPlay)


