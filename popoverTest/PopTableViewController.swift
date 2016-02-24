//
//  PopTableViewController.swift
//  popoverTest
//
//  Created by rxc on 16/2/24.
//  Copyright © 2016年 rxc. All rights reserved.
//

import UIKit

class PopTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    var father:ViewController?

    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 30
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        (cell.viewWithTag(1001) as! UILabel).text = "第\(indexPath.row)行"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        father?.label.text = "选择了第\(indexPath.row)行"

    }
    

   
    
}
