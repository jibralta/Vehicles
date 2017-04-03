//
//  VehicleList.swift
//  Vehicles
//
//  Created by Joy Umali on 4/3/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation


// A singleton

class VehicleList {
    
    let vehicles: [Vehicle]
    
    static var sharedInstance = VehicleList()
        
        private init() {
            // Create a car.
            let mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine", isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
            
            // Create another car.
            let outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine", isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
            
            // Create another car.
            let prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine", isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
            
            // Create a motorcycle.
            let harley = Motorcyle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979, engineNoise: "Vrrrrrrrroooooooooom!")
            
            // Create another motorcycle.
            let kawasaki = Motorcyle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005, engineNoise: "Neeeeeeeeeeeeeeeeow!")
            
            // Create a truck.
            let silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011, powerSource: "gas engine", numberOfWheels: 4, cargoCapacityInCubicFeet: 53)
            
            // Create another truck.
            let eighteenWheeler = Truck(brandName: "Peterbilt", modelName: "579", modelYear: 2013, powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityInCubicFeet: 408)
            
            // Sort the array by the model year
            let v = [mustang, outback, prius, harley, kawasaki, silverado, eighteenWheeler]
            
            vehicles = v.sorted { $0.modelYear < $1.modelYear } //<-- closures sets sorting from small to biggest
        }
    }

// sharedInstance is declared static so you dont need an instance to get it.
// By making init() private, you force clients to not make their own and use the shared instance

// Now anywhere the VehicleList.sharedInstance.vehicles is referenced in the app, the list will be initialised the first time
