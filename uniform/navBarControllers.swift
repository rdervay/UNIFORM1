//
//  navBarControllers.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class navBarControllers: UIViewController {
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var list: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        if (useList2){
          list.image = UIImage (named: "prescriptions 2")
        }

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
                    self.navigationController?.navigationBar.isHidden = true
                }
            }
        }
    }
}
