//
//  ViewController.swift
//  UsingSegue
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var masterTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? DetailViewController
        destination?.dataText = masterTextField.text
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let source = unwindSegue.source as? DetailViewController
        masterTextField.text = source?.dataText
    }

}

