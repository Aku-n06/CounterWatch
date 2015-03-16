
//
//  InterfaceController.swift
//  CounterWatch WatchKit Extension
//
//  Created by Alberto Scampini on 16/03/15.
//  Copyright (c) 2015 Alberto Scampini. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var countButton: WKInterfaceButton!
    @IBOutlet var tableView:WKInterfaceTable!
    var count:Int = 0
    var countArray = [Int]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func saveButtonPressed() {
        //Send count to parent application
        var countString:NSString = "\(count)"
        
        //some operation
        countArray.insert(count, atIndex: 0)
        
        //update UI
        tableView.setNumberOfRows(countArray.count, withRowType:"TextTableRowController")
        
        for (index, countElement) in enumerate(countArray) {
            var row = tableView.rowControllerAtIndex(index) as TextTableRowController
                row.interfaceLabel.setText("\(countElement)")
        }
        
    }
    

    
    @IBAction func resetButtonPressed() {
        count = 0
    }
    
    @IBAction func countButtonPressed() {
        count = count + 1
        countButton.setTitle("\(count)")
    }
    
}
