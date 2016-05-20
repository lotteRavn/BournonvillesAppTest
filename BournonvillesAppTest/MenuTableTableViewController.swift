//
//  MenuTableTableViewController.swift
//  BournonvillesAppTest
//
//  Created by Lotte Ravn on 20/05/16.
//  Copyright © 2016 Lotte Ravn. All rights reserved.
//

import UIKit

class MenuTableTableViewController: UITableViewController {
    
    private let pages = ["Kontakt","Ring","Mail","Find os", "Cowboy Grill & Saloon","Åbningstider","A'la carte menu","bordbestilling","Eventkalender","Om Bournonville's Wild West","Historien om Bournonvilles", "Bournonvilles.dk","Forside"]
    

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
        return pages.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = pages[indexPath.row]
        
        return cell
    }

    

   
}
