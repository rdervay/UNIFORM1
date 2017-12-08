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
var notification1 : Bool = false

class HomeScreen1: UIViewController {
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Wensday: UIButton!
    @IBOutlet weak var Thursday: UIButton!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Check1: UIImageView!
    @IBOutlet weak var Check2: UIImageView!
    @IBOutlet weak var bigImage: UIImageView!
    
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var apptButton: UIButton!
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
             Monday.setImage(UIImage (named: "monday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wensday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Check1.image = UIImage(named: "Artboard 2")
            Check2.image = UIImage(named: "Artboard 2-1")
            bigImage.image = UIImage (named: "homepage copy 2")
            testButton.isEnabled = false
            apptButton.isEnabled = false
        }
        if (sender == Friday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check2.alpha = 0
                self.Check1.alpha = 0
            })
            Friday.setImage(UIImage (named: "friday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wensday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            Check1.image = nil
            Check2.image = nil
            bigImage.image = UIImage (named: "homepage copy 2")
            testButton.isEnabled = false
            apptButton.isEnabled = false
        }
        if (sender == Thursday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 0
            })
            Thursday.setImage(UIImage (named: "thursday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wensday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            Check1.image = nil
            Check2.image = nil
            bigImage.image = UIImage (named: "homepage copy 2")
            testButton.isEnabled = false
            apptButton.isEnabled = false
        }
        if (sender == Wensday){
            testButton.isEnabled = true
            apptButton.isEnabled = true
            UIView.animate(withDuration: 0.2, animations: {
                self.Check2.alpha = 0
                self.Check1.alpha = 1
            })
            Friday.setImage(nil, for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wensday.setImage(nil, for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            Check1.image = UIImage(named: "Artboard 2")
            Check2.image = nil
            if(notification1){
                bigImage.image = UIImage (named: "apptOnly")
                testButton.isEnabled = false
            }
            else {
                bigImage.image = UIImage (named: "newHome")
            }
        }
        if (sender == Tuesday){
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 1
            })
            bigImage.image = UIImage (named: "homepage copy 2")
            testButton.isEnabled = false
            apptButton.isEnabled = false
            Tuesday.setImage(UIImage (named: "tuesday"), for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Wensday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            Check1.image = nil
            Check2.image = UIImage(named: "Artboard 2-1")
        }
    }
}
