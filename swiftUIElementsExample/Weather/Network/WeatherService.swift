//
//  WeatherController.swift
//  simpleWeatherApp
//
//  Created by Jose Chirinos Odio on 14/10/21.
//

import Foundation

public enum WebServiceControllerError: Error {
    case invalidUrl(String)
    case invalidPaylod(URL)
    case forwared(Error)
    
}
public struct WeatherService {
    private let apiKey: String = ""
    private let baseUrl: String = "https://api.openweathermap.org/data/2.5/weather"
    
    func fetchWeatherData(forCity: String, callback: @escaping ((temp: Float?, pressure: Float?, humidity: Float?, weatherDescription: String)?, WebServiceControllerError?) -> Void) {
        
        let possibleUrl = "\(baseUrl)?q=\(forCity)&appid=\(apiKey)&lang=es&units=metric"
        
        if let url = URL(string: possibleUrl) {
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard error == nil else {
                    callback(nil, WebServiceControllerError.forwared(error!))
                    return
                }
                
                if let dataFromWeather = data, let _ = response  {
                    // MARK: - JSON Parsing
                    let decoder = JSONDecoder()
                    
                    do {
                        let weatherData = try decoder.decode(OpenMapWeatherData.self, from: dataFromWeather)
                        print(weatherData)
                        guard let weatherDescription = weatherData.weather.first?.description,
                              let temperature = weatherData.main.temp ,
                              let humidity = weatherData.main.humidity ,
                              let pressure = weatherData.main.pressure else {
                                  print("DATA NOT VALID")
                                  callback(nil, WebServiceControllerError.invalidPaylod(url))
                                  return
                              }
                        callback((temp: temperature, pressure: pressure, humidity: humidity, weatherDescription: weatherDescription), nil)
                    }
                    catch let error {
                        callback(nil, WebServiceControllerError.forwared(error))
                    }
                } else {
                    callback(nil, WebServiceControllerError.invalidPaylod(url))
                }
            }.resume()
        } else {
            callback(nil, WebServiceControllerError.invalidUrl(possibleUrl))
        }
    }
}
