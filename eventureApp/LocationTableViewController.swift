//
//  LocationTableViewController.swift
//  eventureApp
//
//  Created by Lucas Padden on 12/10/16.
//  Copyright © 2016 eventure-app. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {
    
    var eventObject: addEvent!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    
    override func viewDidLoad() {
        print("THE DESCRIPTION IS \(eventObject.description)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendLocationInfo" {
            
            eventObject.location = self.locationTextField.text!
            
            let categoryVC = (segue.destination as! CategoryTableViewController)
            
            categoryVC.eventObject = eventObject
            
        }
    }
    
}
