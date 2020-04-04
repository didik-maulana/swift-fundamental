import UIKit

// String Literal
let singleQuote = "Hello World"
let multilineQuote = """
    The White Rabbit put on his spectacles.  "Where shall I begin, please your Majesty?" he asked.
    
    "Begin at the beginning," the King said gravely, "and go on till you come to the end; then stop."
    """

let chars: [Character] = ["H", "E", "L", "L", "O"]
let text = String(chars)

let emptyString1 = ""
let emptyString2 = String()

emptyString1.isEmpty
text.startIndex
text.endIndex

let dicodingText = "Dicoding Indonesia!"
print(dicodingText[dicodingText.startIndex])
print(dicodingText[dicodingText.index(before: dicodingText.endIndex)])
print(dicodingText[dicodingText.index(after: dicodingText.startIndex)])
print(dicodingText[dicodingText.index(dicodingText.startIndex, offsetBy: 7)])

var dicoding = "Dicoding Indonesia"
dicoding.insert("!", at: dicoding.endIndex)
print(dicoding)

dicoding.insert(contentsOf: " Mantab", at: dicoding.index(before: dicoding.endIndex))
print(dicoding)

dicoding.remove(at: dicoding.index(before: dicoding.endIndex))
print(dicoding)
 
let range = dicoding.index(dicoding.endIndex, offsetBy: -6)..<dicoding.endIndex
dicoding.removeSubrange(range)
print(dicoding)
