//
//  TableViewController.swift
//  Test
//
//  Created by Tingbo Chen on 1/25/16.
//  Copyright © 2016 Tingbo Chen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var cellContent: [AnyObject] = [1,2,3,4,5,6,7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellContent.count
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        rowCounter = indexPath.row
        
        print(rowCounter)
        
        return indexPath
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        IMPORTANT!!! Must change the "reuseIdentifier" to "Cell" in:
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        AND click on Prototype Cells then "Show Attributes Inspector" (in the left bar) then type Cell in the Identifier box.
        Took me 5 hours to figure this out!!!
        */
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        cell.textLabel?.text = cellContent[indexPath.row] as? String
        
        return cell
    }
    
}

