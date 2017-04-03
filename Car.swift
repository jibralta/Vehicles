//
//  Car.swift
//  Vehicles
//
//  Created by Joy Umali on 3/30/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var isConvertible: Bool
    var isHatchback: Bool
    var hasSunroof: Bool
    var numberOfDoors: Int
    
    init(brandName: String, modelName: String, modelYear: Int, powerSource: String, isConvertible: Bool, isHatchback: Bool, hasSunroof: Bool, numberOfDoors: Int) {
        
        self.isConvertible = isConvertible
        self.isHatchback = isHatchback
        self.hasSunroof = hasSunroof
        self.numberOfDoors = numberOfDoors
        
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear, powerSource: powerSource, numberOfWheels: 4)
        // numberOfwheels is 4 because all cars have 4 wheels. The other properties depend on the specific car.
    }
    
    /* NOTE: When overriding a normal method one of two things can happen -
     
     1. Include a call to the super.method() to take advantage of everything happening higher up the inheritancec chain, <-- preferred, or
     2. Provide your own implementation from scratch
    */
    
    // MARK: - Private method implementations
    
    override var vehicleDetails: String {
        
        // Get basic details from superclass
        let basicDetails = super.vehicleDetails
        
        // Initialize mutable string
        var carDetailsBuilder = "\n\nCar-Specific Details:\n\n"
        
        // String helpers for booleans
        let yes = "Yes\n"
        let no = "No\n"
        
        // add info about car-specific features.
        carDetailsBuilder += "Has sunroof: "
        carDetailsBuilder += hasSunroof ? yes:no
        
        carDetailsBuilder += "Is a convertible: "
        carDetailsBuilder += isConvertible ? yes:no
        
        carDetailsBuilder += "Is a hatchback: "
        carDetailsBuilder += isHatchback ? yes:no
        
        carDetailsBuilder += "Number of doors: \(numberOfDoors)"
        
        // Create the final string by combining basic and car-specific details
        let carDetails = basicDetails + carDetailsBuilder
        // the basic details are from the Vehicle base class and the carDetailsBuilder is from the code just above
        
        return carDetails
    }
    
    private func start() -> String {
        return String(format: "Start power source %@.", powerSource)
    }
    // private keyword means that this method should not be used outside of this file.  For this case, cars need to be started, but bicycles dont. 
    
    // MARK: - Superclass Overrides
    
    override func goForward() -> String {
        return String(format: "%@ %@ Then depress gas pedal.", start(), changeGears(newGearName: "Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ %@ Check your rear view mirror. Then depress gas pedal.", start(), changeGears(newGearName: "Reverse"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal. %@", changeGears(newGearName: "Park"))
    }
    
    override func makeNoise() -> String {
        return "Beep beep!"
    }
}
