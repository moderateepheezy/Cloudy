//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by SimpuMind on 7/26/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct DayViewViewModel {
    
    let weatherData: WeatherData
    let dateFormatter = DateFormatter()
    
    var date: String{
        dateFormatter.dateFormat = "EEE MMMM d"
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time: String{
        dateFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        return dateFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temparature: String {
        let temps = weatherData.temperature
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit: return String(format: "%.1f °F", temps)
        case .celsius: return String(format: "%.1f °C", temps.toCelcius())
        }
    }
    
    var windSpeed: String {
        let windSpeed = weatherData.windSpeed
        switch UserDefaults.unitsNotation() {
        case .imperial: return String(format: "%.f MPH", windSpeed)
        case .metric: return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var image: UIImage?{
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
}
