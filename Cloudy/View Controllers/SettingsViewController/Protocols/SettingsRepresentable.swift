//
//  SettingsRepresentable.swift
//  Cloudy
//
//  Created by SimpuMind on 7/27/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

protocol SettingsRepresentable {
    var text: String {get}
    var accessoryType: UITableViewCellAccessoryType {get}
}
