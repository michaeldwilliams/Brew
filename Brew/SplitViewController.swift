//
//  SplitViewController.swift
//  Brew
//
//  Created by Michael Williams on 5/5/17.
//  Copyright © 2017 Michael D. Williams. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {

    
    var coffeeItem:CoffeeItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tableViewContoller = viewControllers.first as? MenuTableViewController {
            tableViewContoller.coffeeItem = coffeeItem
        }
    }
    
    private var preferDetailViewControllerOnNextFocusUpdate = false
    
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        let environments: [UIFocusEnvironment]
        
        if preferDetailViewControllerOnNextFocusUpdate, let detailViewController = viewControllers.last {
            environments = detailViewController.preferredFocusEnvironments
            preferDetailViewControllerOnNextFocusUpdate = false
        }
        else {
            environments = super.preferredFocusEnvironments
        }
        
        return environments
    }
    
   
    func updateFocusToDetailViewController() {
        preferDetailViewControllerOnNextFocusUpdate = true
        setNeedsFocusUpdate()
        updateFocusIfNeeded()
    }
    
       
}
