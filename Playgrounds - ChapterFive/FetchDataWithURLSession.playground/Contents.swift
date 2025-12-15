import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

import Foundation
import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let url = URL(string: "https://imgs.xkcd.com/comics/api.png")!
let request = URLRequest(url: url)

let task = session.dataTask(with: url) { (data, response, error) in
    guard let imageData = data else {
        return // no image, handle error
    }
    _ = UIImage(data: imageData)
    
    let decoder = JSONDecoder()
    do {
        
    }
}
