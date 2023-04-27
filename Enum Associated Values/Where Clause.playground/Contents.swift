import UIKit

// type Constraint 1.1

func genericPrintStringFuction<S>(string: S) where S: ExpressibleByStringLiteral{
    print("Hi \(string)!")
}

genericPrintStringFuction(string: "Khawaja Abdul Haleem")

// for in 1.2

let arr = [1,2,3,4]
let dict = [1:"one", 2:"two", 3:"three"]
for num in arr where dict[num] != nil {
    // 1, 2, 3
    print("num: \(num)")
    print("dict[num]: \(String(describing: dict[num]))")
    print("arr: \(arr)")
}

// do-catch 1.3

enum ResponseError: Error {
    case HTTP(Int)
}

func errorProneOne() throws {
    throw ResponseError.HTTP(505)
    
}

do {
    try errorProneOne()
} catch ResponseError.HTTP(let code) where code >= 400 && code % 2 == 0 {
    print("Bad Request")
} catch ResponseError.HTTP(let code) where code >= 500 && code < 600  {
    print("Internal Server Error")
}

// Adding constraints to generic parameters with where 2.1

func findIndexWithWhere<T: Equatable>(_ array: [T], value: T) -> Int? {
    for (index, item) in array.enumerated() where item == value {
        return index
    }
    return nil
}

let foundIndexAt = findIndexWithWhere([2, 7, 7, 4], value: 4)
print("FoundIndexAt: \(foundIndexAt ?? 0)")

// Adding constraints to generic parameters without where 2.1

func findIndexWithoutWhere<T: Equatable>(_ array: [T], value: T) -> Int? {
    for (index, item) in array.enumerated() {
        if item == value {
            return index
        }
    }
    return nil
}

let foundIndexAtt = findIndexWithoutWhere([2, 7, 7, 4], value: 4)
print("FoundIndexAt: \(foundIndexAtt ?? 0)")

// Adding constraints to associated types

// with Where Clause
protocol Container {
    
    associatedtype Item
    var count: Int { get }
    subscript(i: Int) -> Item { get }
    
}

extension Container where Item: Equatable {
    func indexOf(item: Item) -> Int? {
        for i in 0..<count {
            if self[i] == item {
                return i
            }
        }
        return nil
    }
}

// without where clause
protocol Container2 {
    associatedtype Item
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

extension Container2 where Item: Equatable {
    func indexOf(item: Item) -> Int? {
        for i in 0..<count {
            if self[i] == item {
                return i
            }
        }
        return nil
    }
}

// Adding constraints to function parameters
// with where Clause

func isEqual<T>(_ a: T, _ b: T) -> Bool where T: Equatable {
    return a == b
}

let result = isEqual(2, 6)
print("result: \(result)")


// without where
func isEqualWithoutWhere<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}

// Add additional conditions to switch statements
let grade = 89
switch grade {
    case 0..<60:
        print("F")
    case 60..<70:
        print("D")
    case 70..<80:
        print("C")
    case 80..<90:
        print("B")
    case let g where g >= 95:
        print("A")
    case let g where g >= 90 && g < 95:
        print("A-")
    default:
        fatalError("Invalid grade")
}

// wihtout WHERE
let grade2 = 60
switch grade2 {
case 0..<60:
    print("F")
case 60..<70:
    print("D")
case 70..<80:
    print("C")
case 80..<90:
    print("B")
case 90...100:
    if (grade >= 95) {
        print("A")
    } else {
        print("A-")
    }
default:
    fatalError("Invalid grade")
}
