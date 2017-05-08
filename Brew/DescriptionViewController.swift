//
//  DescriptionViewController.swift
//  Brew
//
//  Created by Michael Williams on 5/5/17.
//  Copyright © 2017 Michael D. Williams. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    var descriptionString: String?
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionTextView.text = descriptionString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
