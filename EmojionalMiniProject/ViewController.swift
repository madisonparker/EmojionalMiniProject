//
//  ViewController.swift
//  EmojionalMiniProject
//
//  Created by Madison Parker on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


@IBAction func showMessage(sender: UIButton) {
    
    // in as much detail as possible
    // pseudo-code the things that need to happen
    // when a user clicks an emoji button
    
    
    let alertController = UIAlertController(title:"You feel...", message:"Yay!", preferredStyle:UIAlertController.Style.alert)
    
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
    present(alertController, animated: true, completion: nil)
}

}
