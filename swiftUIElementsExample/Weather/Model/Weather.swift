//
//  Weather.swift
//  simpleWeatherApp
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import Foundation


struct OpenMapWeatherData: Codable {
    var weather: [OpenMapWeatherWeather]
    var main: OpenMapWeatherMain
}

struct OpenMapWeatherWeather: Codable {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}

struct OpenMapWeatherMain: Codable {
    var temp: Float?
    let pressure: Float?
    let humidity: Float?
}


