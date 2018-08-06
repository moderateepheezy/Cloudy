//
//  SettingsViewTemperatureViewModel.swift
//  Cloudy
//
//  Created by SimpuMind on 7/27/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewTemperatureViewModel: SettingsRepresentable {
    
    let tempNotation: TemperatureNotation
    
    var text: String{
        switch tempNotation {
        case .celsius: return "Celcius"
        case .fahrenheit: return "Fahrenheit"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == tempNotation{
            return .checkmark
        }else{
            return .none
        }
    }
}
