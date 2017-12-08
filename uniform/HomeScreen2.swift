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
    @IBOutlet weak var canvas: UIImageView!
    @IBOutlet weak var apptButton: UIButton!
    @IBOutlet weak var Wendsday: UIButton!
    
    var selectedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useHomescreen2 = true
        self.navigationController?.navigationBar.isHidden = true
        Monday.adjustsImageWhenHighlighted = false
        Wendsday.isSelected = true
        apptButton.isEnabled = false
        if (!notification1){
            canvas.image = UIImage (named: "testOnly")
            apptButton.isEnabled = true
        }
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
            apptButton.isEnabled = false
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 1
                self.Check2.alpha = 1
            })
            Monday.setImage(UIImage (named: "monday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wendsday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            canvas.image = UIImage (named: "homepage copy 2")
            Check1.image = UIImage(named: "Artboard 2")
            Check2.image = UIImage(named: "Artboard 2-1")
        }
        if (sender == Friday){
            apptButton.isEnabled = false
            UIView.animate(withDuration: 0.2, animations: {
                self.Check2.alpha = 0
                self.Check1.alpha = 0
            })
            Friday.setImage(UIImage (named: "friday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wendsday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            canvas.image = UIImage (named: "homepage copy 2")
            Check1.image = nil
            Check2.image = nil
        }
        if (sender == Thursday){
            apptButton.isEnabled = false
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 0
            })
            Thursday.setImage(UIImage (named: "thursday"), for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Wendsday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            canvas.image = UIImage (named: "homepage copy 2")
            Check1.image = nil
            Check2.image = nil
            canvas.image = UIImage (named: "homepage copy 2")
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
            Wendsday.setImage(nil, for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Tuesday.setImage(nil, for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            apptButton.isEnabled = false
            if(notification1){
                canvas.image = UIImage (named: "homepage copy 2")
            }
            else {
                canvas.image = UIImage (named: "testOnly")
                apptButton.isEnabled = true
            }
        }
        if (sender == Tuesday){
            apptButton.isEnabled = false
            UIView.animate(withDuration: 0.2, animations: {
                self.Check1.alpha = 0
                self.Check2.alpha = 1
            })
            Tuesday.setImage(UIImage (named: "tuesday"), for: UIControlState.normal)
            Thursday.setImage(nil, for: UIControlState.normal)
            Wendsday.setImage(UIImage (named: "wendsday"), for: UIControlState.normal)
            Friday.setImage(nil, for: UIControlState.normal)
            Monday.setImage(nil, for: UIControlState.normal)
            canvas.image = UIImage (named: "homepage copy 2")
            Check1.image = nil
            Check2.image = UIImage(named: "Artboard 2-1")
        }
    }
}
