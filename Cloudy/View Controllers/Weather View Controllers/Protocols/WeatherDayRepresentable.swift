//
//  WeatherDayRepresentable.swift
//  Cloudy
//
//  Created by SimpuMind on 7/27/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

protocol WeatherDayRepresentable {
    var day: String {get}
    var date: String {get}
    var temparature: String {get}
    var windSpeed: String {get}
    var image: UIImage? {get}
}
