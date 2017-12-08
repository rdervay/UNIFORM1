//
//  prof.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class prof: UIViewController {

    @IBOutlet weak var record: UIButton!
    @IBOutlet weak var home: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useDoctor2 = true
        notification1 = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func toRecords(_ sender: Any) {
        self.navigationController?.navigationBar.isHidden = false
        for nextVC in self.navigationController!.viewControllers {
            if nextVC is tests {
                self.navigationController!.popToViewController(nextVC, animated: true)
            }
        }
    }
    
    @IBAction func homeButton(_ sender: Any) {
        self.navigationController?.navigationBar.isHidden = true
        for nextVC in self.navigationController!.viewControllers {
            if !useHomescreen2 {
                if nextVC is HomeScreen1 {
                    self.navigationController!.popToViewController(nextVC, animated: true)
                }
            }
            else{
                if nextVC is HomeScreen2 {
                    self.navigationController!.popToViewController(nextVC, animated: true)
                }
            }
        }
    }
}
