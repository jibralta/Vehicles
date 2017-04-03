
//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Joy Umali on 4/2/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import Foundation
import UIKit

// Rather than defining a new class, you create an extension on the existing UIAlertController class

extension UIAlertController {
    
    class func alertControllerWithTitle(title: String, message: String) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        return controller
    }
    
    class func alertControllerWithNumberInput(title: String, message: String, buttonTitle: String, handler: @escaping (Int?) -> Void) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        controller.addTextField { $0.keyboardType = .numberPad }
    
        controller.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        controller.addAction(UIAlertAction(title: buttonTitle, style: .default) { action in
            let textFields = controller.textFields as? [UITextField]
            let value = Int((textFields?[0].text)!)
            handler(value)
        } )
        
        return controller
    }
    
    
}
