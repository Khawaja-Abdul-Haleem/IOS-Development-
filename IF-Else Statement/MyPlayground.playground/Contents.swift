import UIKit

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    if loveScore > 80 {
        print("You Love EachOther like Kanye Loves Kanye")
    }
    if loveScore > 40 && loveScore < 80 {
        print("You Go Together Like Coke and Mentos")
    }
    else{
        print("You'll be Forever alone")
    }
}
loveCalculator()
