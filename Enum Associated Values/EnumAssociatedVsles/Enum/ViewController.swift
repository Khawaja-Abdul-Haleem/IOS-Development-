//
//  ViewController.swift
//  Enum
//
//  Created by Khawaja Abdul Haleem on 26/04/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getData { result in
            switch result {
            case .success(let data):
                print("Success - \(data)")
                
            case .failure(let error):
                print("Error - \(error)")
            }
        }
    }

    enum MyError: Error {
        case someError
    }
    
    func getData(completion: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: URL(string: "")!) { data, response, error in
            
            guard let data = data else {
                completion(.failure(MyError.someError))
                return
                
            }
            completion(.success(data))
        }
        task.resume()
    }

}

