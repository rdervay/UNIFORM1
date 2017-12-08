//
//  doctorunavaliable.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class doctorunavaliable: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }

    @IBAction func toDoctors(_ sender: Any) {
        navigationController?.navigationBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
}
