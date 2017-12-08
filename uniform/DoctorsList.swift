//
//  DoctorsList.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class DoctorsList: UIViewController {
    @IBOutlet weak var toRecords: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func toHome(_ sender: Any) {
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
    @IBAction func PopOff(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
