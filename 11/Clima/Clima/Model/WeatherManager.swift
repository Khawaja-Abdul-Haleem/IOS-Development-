//
//  WeatherManager.swift
//  Clima
//
//  Created by Khawaja Abdul Haleem on 07/05/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDeleagte {
    func didUpdateWeather(_ weatherManager:WeatherManager, weather: WeatherModel)
    func didFailedWithError(error: Error)
}

struct  WeatherManager {
    let weatheUrl = "https://api.openweathermap.org/data/2.5/weather?&appid=b60dcbc4c96fbc4e75c8bdef862e4ed7&units=metric"
    
    var delegate: WeatherManagerDeleagte?
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatheUrl)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees , longitude: CLLocationDegrees) {
        let urlString =  "\(weatheUrl)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        //1. Create URL
        if let url = URL(string: urlString) {
            
            //2. Create URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Give session a Task
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    delegate?.didFailedWithError(error: error!)
                    return
                }
                
                if let safedata = data {
                    if let weather = parseJSON(safedata){
                        delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            
            //4. Start a task
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodeData.weather[0].id
            let temp = decodeData.main.temp
            let name = decodeData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            return weather
           
        }catch {
            delegate?.didFailedWithError(error: error)
            return nil
        }
    }
    
}
