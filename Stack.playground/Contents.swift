import Foundation

//Stack made by pushing

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack)

if let poppedElement = stack.pop() {
    assert (4 == poppedElement)
    print("Popped: \(poppedElement)")
}

//Stack from Array of Strings

let array = ["A", "B", "C", "D"]
var sStack = Stack(array)
print(sStack)
sStack.pop()


//Stack from Array Literal
var lStack: Stack = [1.0, 2.0, 3.0, 4.0]
print(lStack)
lStack.pop()

//Stack Challenge
    /*Check for balanced parentheses. Given a string, check if there are ( and ) characters,
    and return true if the parentheses in the string are balanced */

func isItBalanced(theString: String) -> Bool {

    var bStack = Stack<Character>()
    for eachChar in theString {
        if eachChar == "(" {
        bStack.push(eachChar)
        } else if eachChar == ")" {
            if bStack.isEmpty {
                return false
            } else {
                bStack.pop()
            }
        }
    }
    return bStack.isEmpty
}

isItBalanced(theString: "h((e))llo(world)()")
//Time Complexity: O(n) looping through string
//Space Complexity: O(n) cause Stack


