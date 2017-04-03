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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let vehicle = detailVehicle {
            print(vehicle)
        }
    }
    
  @IBAction func goForward(_ sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Go Forward", message: vehicle.goForward())
        present(controller, animated: true) {} // empty closure?
        }
    }
  
  @IBAction func goBackward(_ sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Go Backward", message: vehicle.goBackward())
        present(controller, animated: true) {}
        }
    
    }
  
  @IBAction func stopMoving(_ sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Stop Moving", message: vehicle.stopMoving())
        present(controller, animated: true) {}
    }
    
    }
  
  @IBAction func turn(_ sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithNumberInput(title: "Turn", message: "Enter number of degrees to turn:", buttonTitle: "Go!", handler: { (integerValue) in
            if let value = integerValue {
                let controller = UIAlertController.alertControllerWithTitle(title: "Turn", message: vehicle.turn(degrees: value))
                self.present(controller, animated: true, completion: nil)
            }
        })
            present(controller, animated: true) {}
    }
}
  
  @IBAction func makeNoise(_ sender: AnyObject) {
    // the if let statements make sure that the vehicle exists. 
    // if the vehicle exists, create an alert controller
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Make Some Noise!", message: vehicle.makeNoise())
        present(controller, animated: true) {}
        }
    }
  
}
