//
//  WeatherDayViewViewModel.swift
//  Cloudy
//
//  Created by SimpuMind on 7/27/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct WeatherDayViewViewModel {
    let weatherDaydata: WeatherDayData
    
    private let dateFormatter = DateFormatter()
    
    var day: String {
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: weatherDaydata.time)
    }
    
    var date: String {
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter.string(from: weatherDaydata.time)
    }
    
    var temparature: String {
        let min = format(temparature: weatherDaydata.temperatureMin)
        let max = format(temparature: weatherDaydata.temperatureMax)
        return "\(min) - \(max)"
    }
    
    var windSpeed: String {
        let windSpeed = weatherDaydata.windSpeed
        switch UserDefaults.unitsNotation() {
        case .imperial: return String(format: "%.f MPH", windSpeed)
        case .metric: return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var image: UIImage?{
        return UIImage.imageForIcon(withName: weatherDaydata.icon)
    }
    
    private func format(temparature: Double) -> String{
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit: return String(format: "%.0f °F", temparature)
        case .celsius: return String(format: "%.0f °C", temparature.toCelcius())
        }
    }
}

extension WeatherDayViewViewModel: WeatherDayRepresentable {}
