//
//  profile1.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class profile1: UIViewController {
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var dImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (useDoctor2){
            dImage.image = UIImage (named: "d1")
        }
        

        // Do any additional setup after loading the view.
    }

    @IBAction func returnHome(_ sender: Any) {
        self.navigationController?.navigationBar.isHidden = true
        //present on top
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let homeVC = storyboard.instantiateInitialViewController() as! UINavigationController
//        self.present(homeVC, animated: true, completion: nil)
        
        //pop off
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
