//
//  DetailViewController.swift
//  UsingSegue
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailtextField: UITextField!
    var dataText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataText != nil {
            detailtextField.text = dataText
        }

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataText = detailtextField.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
