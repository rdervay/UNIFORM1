//
//  HomeScreen1.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

var useHomescreen2 : Bool = false
var useDoctor2 : Bool = false
var useList2 : Bool = false

class HomeScreen1: UIViewController {
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Wensday: UIButton!
    @IBOutlet weak var Thursday: UIButton!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Check1: UIImageView!
    @IBOutlet weak var Check2: UIImageView!
    @IBOutlet weak var bigImage: UIImageView!
    
    var selectedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        Monday.adjustsImageWhenHighlighted = false
        Wensday.isSelected = true
        selectedButton = Wensday
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
        if (sender == Wensday){
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
