import UIKit

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    switch loveScore {
    case 81...100:
        print("You Love EachOther Like Kanye Loves Kanye")
    case 41...80:
        print("You Go Together like Coke and Mentos")
    case ...40:
        print("You'll be Forever Alone")
    default:
        print("Error")
    }
}
loveCalculator()

