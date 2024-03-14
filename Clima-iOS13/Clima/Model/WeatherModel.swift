//
//  WeatherModel.swift
//  Clima
//
//  Created by 최유현 on 10/18/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    //computed property
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "could.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "snow"
        case 700...781:
            return "could.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
        }
    }
}
