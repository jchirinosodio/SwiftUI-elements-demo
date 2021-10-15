//
//  WeatherViewModel.swift
//  simpleWeatherApp
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import Foundation


class WeatherViewModel: ObservableObject {
    private let weatherService: WeatherService = WeatherService()
    @Published var temperature: Float?
    @Published var pressure: Float?
    @Published var humidity: Float?
    @Published var weatherDescription: String?
    @Published var backgroundImageUrl: String = ""
    
    
    func fetchData(for city: String?) {
        if let city = city {
            weatherService.fetchWeatherData(forCity: city) { weather, error in
                guard error == nil else {
                    print(error as Any)
                    return
                }
                if let retrievedWeather = weather {
                    DispatchQueue.main.async {
                        self.temperature = retrievedWeather.temp
                        self.humidity = retrievedWeather.humidity
                        self.pressure = retrievedWeather.pressure
                        self.weatherDescription = retrievedWeather.weatherDescription
                    }
                }
            }
        }
    }
}

