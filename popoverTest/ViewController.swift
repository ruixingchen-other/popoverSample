//
//  ViewController.swift
//  popoverTest
//
//  Created by rxc on 16/2/24.
//  Copyright © 2016年 rxc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {
    
    
    @IBOutlet var label: UILabel!
    
    var popSurface:PopViewController?
    var popTable:PopTableViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func leftTap(sender: AnyObject) {
        let pop = self.storyboard?.instantiateViewControllerWithIdentifier("PopTableViewController") as! PopTableViewController
        popTable = pop
        popSurface?.dismissViewControllerAnimated(false, completion: nil)
        
        pop.modalPresentationStyle = .Popover
        pop.popoverPresentationController?.delegate = self
        pop.popoverPresentationController?.barButtonItem = self.navigationItem.leftBarButtonItem!
        pop.preferredContentSize = CGSizeMake(100, 250)
        
        pop.father = self
        
        self.presentViewController(pop, animated: true, completion: nil)
        
    }
    
    @IBAction func rightTap(sender: AnyObject) {
        let pop = PopViewController()
        
        popSurface = pop
        popTable?.dismissViewControllerAnimated(false, completion: nil)
        
        pop.modalPresentationStyle = .Popover
        pop.popoverPresentationController?.delegate = self
        pop.popoverPresentationController?.sourceView = self.view
        pop.popoverPresentationController?.sourceRect = self.view.bounds
        pop.preferredContentSize = CGSizeMake(200, 200)
        pop.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection()
        
        pop.father = self
        
        self.presentViewController(pop, animated: true, completion: nil)
        
    }
    
    
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
}

