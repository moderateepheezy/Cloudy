//
//  SettingsViewUnitsViewModel.swift
//  Cloudy
//
//  Created by SimpuMind on 7/27/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewUnitsViewModel: SettingsRepresentable {
    
    let unitNotation: UnitsNotation
    
    var text: String{
        switch unitNotation {
        case .imperial: return "Imperial"
         case .metric: return "Meric"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.unitsNotation() == unitNotation{
            return .checkmark
        }else{
            return .none
        }
    }
}
