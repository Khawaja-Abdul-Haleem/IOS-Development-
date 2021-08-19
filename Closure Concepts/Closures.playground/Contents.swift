import UIKit

func Calculator (n1: Int, n2: Int, operation: (Int,Int) -> Int) -> Int {
    return operation(n1,n2)
}


let result = Calculator(n1: 2, n2: 5, operation: {$0 + $1})
print(result)

// Example 2

let array = [6,2,3,9,5,1]


print(array.map{$0 + 1})

