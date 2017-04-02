//
//  DetailViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  
  var detailVehicle: Vehicle? {
    didSet {
      // Update the view.
      self.configureView()
    }
  }

  func configureView() {
    // Update the user interface for the detail item.
    if let vehicle = detailVehicle {
      title = vehicle.vehicleTitle
        
        detailDescriptionLabel?.text = vehicle.vehicleDetails
        
        
//         THIS CODE BELOW is before the Car class inherited more efficiently from the VEHICLE class
//        var basicDetails = "Basic vehicle details:\n\n"
//        basicDetails += "Brand name: \(vehicle.brandName)\n"
//        basicDetails += "Model name: \(vehicle.modelName)\n"
//        basicDetails += "Model year: \(vehicle.modelYear)\n"
//        basicDetails += "Power source: \(vehicle.powerSource)\n"
//        basicDetails += "# of wheels: \(vehicle.numberOfWheels)\n"
//        // the end of the string is the value of the method of the instance vehicle from method detailVehicle from the Vehicle base class. 
//        
////        // Car-specific details
////        basicDetails += "\n\nCar-Specific Details:\n\n"
////        basicDetails += "Number of doors: \(vehicle.numberOfDoors)" // Error because .numberOfDoors is not a method of Vehicle. The instance vehicle is inheriting from detailVehicle above which is an instance of Vehicle class. This property is associated with the Car subclass which references the Vehicle Class.  Use inheritance to use the same method to supply the string to be displayed for the appropriate details for each subclass. This way the view controllers doen’t need to concern itself with the details of specific subclasses. Add to Vehicle base class so that Car class can inherit it too. 
//        
//        detailDescriptionLabel?.text = basicDetails
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
    
    
  @IBAction func goForward(_ sender: AnyObject) {
    // TODO: Fill this in.
  }
  
  @IBAction func goBackward(_ sender: AnyObject) {
    // TODO: Fill this in.
  }
  
  @IBAction func stopMoving(_ sender: AnyObject) {
    // TODO: Fill this in.
  }
  
  @IBAction func turn(_ sender: AnyObject) {
    //TODO: Fill this in.
  }
  
  @IBAction func makeNoise(_ sender: AnyObject) {
    // TODO: Fill this in.
  }
  
}
