//
//  Vehicle.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import Foundation

class Vehicle {
    
    // stored properties initialized with temporary dummy values.
    var brandName = "null"
    var modelName = "null"
    var modelYear = 0
    var powerSource = "null"
    var numberOfWheels = 0
    var vehicleTitle: String {
        return String(format: "%d %@ %@", modelYear, brandName, modelName)
        // this is an exanple of a computed property. A fresh string is generated every timeThe others above are stored properties.
    }
    
    var vehicleDetails: String {
        var details = "Basic vehicle details:\n\n"
        details += "Brand name: \(brandName)\n"
        details += "Model name: \(modelName)\n"
        details += "Model year: \(modelYear)\n"
        details += "Power source: \(powerSource)\n"
        details += "# of wheels: \(numberOfWheels)\n"
        
        return details
    }
    
    /*
     
     NOTE about Initialization & Properties:
     
     Properties of a class must be initialized either by setting them explicitly (like above) or by initializing them in an init() method.
     If you supply all the stored properties with values, the compiler won't require you to explicitly set them in the init() method.
     
     NOTE about Classes Versus Structs:
     
     Classes allow you to build class hierarchies and override methods. Structs are more static in nature and don't allow for this.
     
     */
    
    
    
    // MARK: Class Methods
    
    func goForward() -> String { return "null" }
    
    func goBackward() -> String { return "null" }
    
    func stopMoving() -> String { return "null" }
    
    func turn(degrees: Int) -> String {
        
        var normalizedDegrees = degrees
        
        // Since there are only 360 degrees in a circle, calculate what a single turn would be.
        let degreesinACircle = 360
        
        if (normalizedDegrees > degreesinACircle || normalizedDegrees < degreesinACircle) {
            // The % operator returns the remainder after dividing.
            normalizedDegrees = normalizedDegrees % degreesinACircle
        }
        
        return String(format: "Turn %d degrees.", normalizedDegrees)
    }
    
    func changeGears(newGearName: String) -> String {
        return String(format: "Put %@ into %@ gear.", self.modelName, newGearName)
    }
    
    func makeNoise() -> String { return "null" }    
}

