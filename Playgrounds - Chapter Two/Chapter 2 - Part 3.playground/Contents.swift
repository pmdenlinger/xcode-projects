import UIKit

let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
print(fibonacciArray.count)
print(fibonacciSet.count)

var animals: Set<String> = ["car", "dog", "mouse", "elephant"]
animals.insert("rabbit")
print(animals.contains("dog"))
animals.remove("dog")
print(animals.contains("dog"))

let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers)
print(evenOrTriangularNumbers)

let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers)
print(oddAndSquareNumbers.count)

let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers)
print(squareOrTriangularNotBoth.count)

let squareNotOdd = squareNumbers.subtracting(oddNumbers)
print(squareNotOdd.count)

let animalKingdom: Set<String> = ["dog", "cat", "pigeon", "chimpanzee", "snake",
"kangaroo", "giraffe", "elephant", "tiger", "lion", "panther"]

let vertebrates: Set<String> = ["dog", "cat", "pigeon", "chimpanzee", "snake", "kangaroo", "giraffe", "elephant",   "tiger", "lion", "panther"]

let reptile: Set<String> = ["snake"]

let mammals: Set<String> = ["dog", "cat", "chimpanzee", "kangaroo", "giraffe", "elephant", "tiger", "lion", "panther"]

let catFamily: Set<String> = ["cat", "tiger", "lion", "panther"]
let domesticAnimals: Set<String> = ["cat", "dog"]

print(mammals.isSubset(of:animalKingdom))
print(mammals.isSuperset(of:animalKingdom))

print(vertebrates.isStrictSuperset(of: animalKingdom))
print(animalKingdom.isStrictSubset(of: animalKingdom))

print(animalKingdom.isStrictSuperset(of: vertebrates))
print(animalKingdom.isStrictSubset(of: vertebrates))

print(catFamily.isDisjoint(with: reptile))


