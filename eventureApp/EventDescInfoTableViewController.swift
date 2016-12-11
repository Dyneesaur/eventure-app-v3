//
//  EventDescInfoTableViewController.swift
//  eventureApp
//
//  Created by Lucas Padden on 12/10/16.
//  Copyright © 2016 eventure-app. All rights reserved.
//

import UIKit

class EventDescInfoTableViewController: UITableViewController {
    
    var eventObject: addEvent!
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        print("THE TITLE IS \(eventObject.title)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sendDescInfo" {
            
            
            eventObject.description = descriptionField.text!
            let locationVC = (segue.destination as! LocationTableViewController)
            
            locationVC.eventObject = eventObject
            
            
        }
        
    }
    
}
