//
//  Truck.swift
//  Vehicles
//
//  Created by Joy Umali on 4/2/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation

class Truck: Vehicle {
    
    var cargoCapacityCubicFeet: Int = 0
    
    // MARK: - Superclass overrides
    override func goForward() -> String {
        return String(format:"%@ Depress gas pedal.", changeGears(newGearName: "Drive"))
    }
    
    override func stopMoving() -> String {
        return String(format:"Depress brake pedal. %@", changeGears(newGearName: "Park"))
    }
    
    override func goBackward() -> String {
        
        if cargoCapacityCubicFeet > 100 {
            //sound backup alarm first
            return String(format: "Wait for \"%@\", then %@", soundBackupAlarm(), changeGears(newGearName: "Reverse"))
        } else {
            return String(format:"%@ Depress gas pedal.", changeGears(newGearName: "Reverse"))
        }
    }
 
    override func makeNoise() -> String {
        switch numberOfWheels {
        case Int.min...4:
            return "Beep beep!"
        case 5...8:
            return "Honk!"
        default:
            return "HOOOOOONK!"
        }
    }
    
    override var vehicleDetails: String {
// set basic details for truck from the superclass Vehicle
        let basicDetails = super.vehicleDetails
        
        // initialize mutable string
        var truckDetailsBuilder = "\n\nTruck-Specific Details:\n\n"
        
        // Add info about truck specific features.
        truckDetailsBuilder += "Cargo Capacity: \(cargoCapacityCubicFeet) cubic feet"
        
        // Create final string from basic to specific
        let truckDetails = basicDetails + truckDetailsBuilder
        
        return truckDetails
        
    }
    
    // MARK: - Private methods
    private func soundBackupAlarm() -> String {
        return "Beep! Beep! Beep! Beep!"
    }
    
    
    
}
