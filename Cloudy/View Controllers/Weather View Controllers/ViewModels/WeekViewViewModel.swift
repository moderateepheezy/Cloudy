//
//  WeekViewViewModel.swift
//  Cloudy
//
//  Created by SimpuMind on 7/26/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct WeekViewViewModel{
    
    let weatherData: [WeatherDayData]
    
    let dateFormatter = DateFormatter()
    
    var numOfSections: Int{
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func weekViewViewModel(for index: Int) -> WeatherDayViewViewModel {
        return WeatherDayViewViewModel(weatherDaydata: weatherData[index])
    }
}
