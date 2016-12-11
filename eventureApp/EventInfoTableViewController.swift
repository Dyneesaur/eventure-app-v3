//
//  EventInfoTableViewController.swift
//  eventureApp
//
//  Created by Lucas Padden on 12/10/16.
//  Copyright © 2016 eventure-app. All rights reserved.
//

import UIKit
class EventInfoTableViewController: UITableViewController {
    
    
    var eventObject: addEvent!
    
    @IBOutlet weak var titleField: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sendTitleInfo" {
            
            
            eventObject.title = self.titleField.text!
            let descVC = (segue.destination as! EventDescInfoTableViewController)
            
            descVC.eventObject = eventObject
            
            
        }
        
        
    }
    
    
    
}

