import UIKit

//extension Double {
//    func round(to places: Int) {
//        let preciseNumber = pow(10, Double(places))
//        var n = self
//        n = n * preciseNumber
//        n.round()
//        n = n / preciseNumber
//    }
//}
//
//var myDouble = 3.14159
//
//myDouble.round(to: 2)

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

extension UIButton {
    func makeCircular() {
        button.layer.cornerRadius =  self.frame.size.width / 2
        button.clipsToBounds = true
    }
}

button.makeCircular()
