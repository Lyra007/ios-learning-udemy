//: Playground - noun: a place where people can play

//difference between string and NSstring is NSstring has lots of functions there.

import UIKit

var str = "Hello"


var newString = str + " Lyra!"

for char in newString.characters {
    
    print(char)

}

let newTypeString = NSString(string: newString)
newTypeString.substring(to: 5)
newTypeString.substring(from: 5)
NSString(string : newTypeString.substring(from: 6)).substring(to: 4)
newTypeString.substring(with: NSRange(location: 6, length: 4) )

// NSRANGE

if newTypeString.contains("Lyra"){
    print("yes")
}else{
    print("no")
}

newTypeString.components(separatedBy: " ")

newTypeString.uppercased

newTypeString.lowercased
