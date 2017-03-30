//
//  Car.swift
//  Vehicles
//
//  Created by Joy Umali on 3/30/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var isConvertible: Bool = false
    var isHatchback: Bool = false
    var hasSunroof: Bool = false
    var numberOfDoors: Int = 0
    
    override init() {
        super.init()
        numberOfWheels = 4
    }
    
    /* NOTE: When overriding a normal method one of two things can happen -
     
     1. Include a call to the super.method() to take advantage of everything happening higher up the inheritancec chain, <-- preferred, or
     2. Provide your own implementation from scratch
    */
    
    // MARK: - Private method implementations
    
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
