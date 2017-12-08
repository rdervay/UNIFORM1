//
//  comingSoon.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class comingSoon: UIViewController {

    @IBOutlet weak var back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.navigationBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
}
