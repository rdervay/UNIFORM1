//
//  UnavailableForm.swift
//  uniform
//
//  Created by Russell Dervay on 12/6/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class UnavailableForm: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.popViewController(animated: true);
    }
}
