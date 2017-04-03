//
//  Motorcycle.swift
//  Vehicles
//
//  Created by Joy Umali on 4/2/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation

class Motorcyle: Vehicle {
    
    var engineNoise = ""
    
    init(brandName: String, modelName: String, modelYear: Int, engineNoise: String) {
        
        self.engineNoise = engineNoise
        
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear, powerSource: "gas engine", numberOfWheels: 2)
        // powerSource and numberOfWheels are in the super.init because these have standard values specific to Motorycle. All motorcyles have 2 wheels and a gas engine. Other property values can change depending on the specific motorcycle.
    }
    
    // MARK: - Superclass Overrides for Actions such as goForward, etc
    
    override func goForward() -> String {
        return String(format: "%@ Open throttle.", changeGears(newGearName: "Forward"))
    }

    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet.", changeGears(newGearName: "Neutral"), modelName)
    }
    
    override func stopMoving() -> String {
        return "Squeeze brakes"
    }
    
    override func makeNoise() -> String {
        return self.engineNoise
    }
    
    // MARK: - Superclass Overrides for Specific Details (similar in Car subclass)
    
    override var vehicleDetails: String {
        // get basic details from superclass
        let basicDetails = super.vehicleDetails
        
        // Initialize mutable string
        var motorcycleDetailsBuilder = "\n\nMotorcycle-Specific Details:\n\n"
        
        // Add info about motorcyle-specific features.
        motorcycleDetailsBuilder += "Engine Noise: \(engineNoise)"
        
        let motorcycleDetails = basicDetails + motorcycleDetailsBuilder
        
        return  motorcycleDetails
    }
    
    
    
    
}
