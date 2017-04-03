//
//  MasterViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleListTableViewController: UITableViewController {
    
//    var vehicles:[Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setupVehicleArray()
        title = "Vehicles"
    }
    
//    // MARK: - Data Setup
//    func setupVehicleArray() {
//        // this function adds a data setup model to construct the vehicle array.
//        // Each CAR is created and customized based on the values set on its properties. 
//        
//        
//        // Clear the array. (Start from scratch.)
//        vehicles.removeAll(keepingCapacity: true)
//        
//        // Create a car.
//        var mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine", isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
//        
////        var mustang = Car()
////        mustang.brandName = "Ford"
////        mustang.modelName = "Mustang"
////        mustang.modelYear = 1968
////        mustang.isConvertible = true
////        mustang.isHatchback = false
////        mustang.hasSunroof = false
////        mustang.numberOfDoors = 2
////        mustang.powerSource = "gas engine"
//        
//        // Add it to array
//        vehicles.append(mustang)
//        
//        // Create another car.
//        
//        var outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine", isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
////        var outback = Car()
////        outback.brandName = "Subaru"
////        outback.modelName = "Outback"
////        outback.modelYear = 1999
////        outback.isConvertible = false
////        outback.isHatchback = true
////        outback.hasSunroof = false
////        outback.numberOfDoors = 5
////        outback.powerSource = "gas engine"
//        
//        // Add it to the array.
//        vehicles.append(outback)
//        
//        // Create another car
//        
//        var prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine",
//                        isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
//        
////        var prius = Car()
////        prius.brandName = "Toyota"
////        prius.modelName = "Prius"
////        prius.modelYear = 2002
////        prius.hasSunroof = true
////        prius.isConvertible = false
////        prius.isHatchback = true
////        prius.numberOfDoors = 4
////        prius.powerSource = "hybrid engine"
//        
//        // Add it to the array.
//        vehicles.append(prius)
//        
//        // Create a motorycle
//        var harley = Motorcyle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979,
//                                engineNoise: "Vrrrrrrrroooooooooom!")
//        
////        var harley = Motorcyle()
////        harley.brandName = "Harley-Davidson"
////        harley.modelName = "Softail"
////        harley.modelYear = 1979
////        harley.engineNoise = "Vrrrrrrrroooooooooom!"
//        
//        // Add this vehicle instance to the vehicles array
//        vehicles.append(harley)
//        
//        // Create another motorcycle
//        var kawasaki = Motorcyle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005,
//                                  engineNoise: "Neeeeeeeeeeeeeeeeow!")
//        
////        var kawasaki = Motorcyle()
////        kawasaki.brandName = "Kawasaki"
////        kawasaki.modelName = "Ninja"
////        kawasaki.modelYear = 2005
////        kawasaki.engineNoise = "Neeeeeeeeeeeeeeeeow!"
//        
//        // Add it to the array
//        self.vehicles.append(kawasaki)
//        
//        // Create a truck
//        var silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011,
//                              powerSource: "gas engine", numberOfWheels: 4, cargoCapacityInCubicFeet: 53)
//        
////        var silverado = Truck()
////        silverado.brandName = "Chevrolet"
////        silverado.modelName = "Silverado"
////        silverado.modelYear = 2011
////        silverado.numberOfWheels = 4
////        silverado.cargoCapacityCubicFeet = 53
////        silverado.powerSource = "gas engine"
//        
//        // Add it to the array
//        vehicles.append(silverado)
//        
//        // Create another truck
//        var eighteenWheeler = Truck(brandName: "Peterbilt", modelName: "579", modelYear: 2013,
//                                    powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityInCubicFeet: 408)
//        
////        var eighteenWheeler = Truck()
////        eighteenWheeler.brandName = "Peterbilt"
////        eighteenWheeler.modelName = "579"
////        eighteenWheeler.modelYear = 2013
////        eighteenWheeler.numberOfWheels = 18
////        eighteenWheeler.cargoCapacityCubicFeet = 408
////        eighteenWheeler.powerSource = "diesel engine"
//        
//        // Add it to the array
//        vehicles.append(eighteenWheeler)
//        
//        // Sort array by the model year
//        vehicles.sort { $0.modelYear < $1.modelYear }
//        
//        
//    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let vehicle = VehicleList.sharedInstance.vehicles[indexPath.row]
                (segue.destination as! VehicleDetailViewController).detailVehicle = vehicle
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VehicleList.sharedInstance.vehicles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell
        // 'tableView' = tableView selected.
        // 'Cell" =  identifier name of the cell in the tableView
        // 'UITableViewCell' = name of the class
        
        let vehicle = VehicleList.sharedInstance.vehicles[indexPath.row] as Vehicle // the vehicle (from the vehicles array) will be the vehicle selected in correspondence to the row selected.
        cell.textLabel?.text = vehicle.vehicleTitle // sets the label text to the value generated by computed property - vehicleTitle 
        return cell
    }
}

