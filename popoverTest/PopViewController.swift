//
//  PopViewController.swift
//  popoverTest
//
//  Created by rxc on 16/2/24.
//  Copyright © 2016年 rxc. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
    
    var father:ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func valueChanged(sender: AnyObject) {
        
        let seg = sender as! UISegmentedControl
        father?.label.text = "选中了\(seg.titleForSegmentAtIndex(seg.selectedSegmentIndex)!)"
        
    }
    
   

}
