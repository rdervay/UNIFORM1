//
//  HomeScreen2.swift
//  uniform
//
//  Created by Russell Dervay on 12/6/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class HomeScreen2: UIViewController {

    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Thursday: UIButton!
    @IBOutlet weak var Check1: UIImageView!
    @IBOutlet weak var Check2: UIImageView!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Wendsday: UIButton!
    
    var selectedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useHomescreen2 = true
        self.navigationController?.navigationBar.isHidden = true
        Monday.adjustsImageWhenHighlighted = false
        Wendsday.isSelected = true
        selectedButton = Wendsday
        Monday.isSelected = false
        Tuesday.isSelected = false
        Thursday.isSelected = false
        Friday.isSelected = false
    }
    
    
    @IBAction func dayPressed(_ sender: UIButton) {
        selectedButton.isSelected = false
        sender.isSelected = true
        selectedButton = sender
        if (sender == Monday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 1
                self.Check2.alpha = 1
            })
            Check1.image = UIImage(named: "Artboard 2")
            Check2.image = UIImage(named: "Artboard 2-1")
        }
        if (sender == Friday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check2.alpha = 0
                self.Check1.alpha = 0
            })
            Check1.image = nil
            Check2.image = nil
        }
        if (sender == Thursday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 0
            })
            Check1.image = nil
            Check2.image = nil
        }
        if (sender == Wendsday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check2.alpha = 0
                self.Check1.alpha = 1
            })
            Check1.image = UIImage(named: "Artboard 2")
            Check2.image = nil
        }
        if (sender == Tuesday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 1
            })
            Check1.image = nil
            Check2.image = UIImage(named: "Artboard 2-1")
        }
    }
}