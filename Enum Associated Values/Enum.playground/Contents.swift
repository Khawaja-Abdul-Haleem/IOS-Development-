import UIKit

enum CarState {
    case Drive
    case Reverse
    case Neutral
    case Parking
  
    var carModel: String {
        switch self {
        case .Drive: return "Driving State"
        case .Reverse: return "Reverse State"
        case .Neutral: return " Neutral State"
        case .Parking: return "Parking State"
            
        }
    }
}

let foo = CarState.Drive.carModel
print(foo)

let state: CarState = .Drive
print(state)

enum responseResult {
    case Success(value: Any)
    case Failure(error: Error)
    
    var description: String {
        switch self {
        case .Success(let value):
            return "Success - \(value)"
            
        case .Failure(let error):
            return "Error - \(error)"
        }
    }
    
}

let successValue = responseResult.Success(value: "Verified")
let failureValue = responseResult.Success(value: "Failure")
print(successValue.description)
print(failureValue.description)
