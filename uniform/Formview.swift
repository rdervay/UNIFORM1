//
//  Formview.swift
//  uniform
//
//  Created by Russell Dervay on 12/7/17.
//  Copyright © 2017 Russell Dervay. All rights reserved.
//

import UIKit

class Formview: UIViewController {
    var dBool : Bool = false;
    @IBOutlet weak var diabetes: UIButton!
    var coughBool : Bool = false;
    @IBOutlet weak var coughing: UIButton!
    var asthmaBool : Bool = false;
    @IBOutlet weak var asthma: UIButton!
    var breathBool : Bool = false;
    @IBOutlet weak var breath: UIButton!
    var bloodBool : Bool = false;
    @IBOutlet weak var BloodPressure: UIButton!
    var chestBool : Bool = false;
    @IBOutlet weak var Chest: UIButton!
    var peeBool : Bool = false;
    @IBOutlet weak var pee: UIButton!
    var arthBool : Bool = false;
    @IBOutlet weak var arthritis: UIButton!
    var depBool : Bool = false;
    @IBOutlet weak var depressiom: UIButton!
    var strokeBool : Bool = false;
    @IBOutlet weak var Stroke: UIButton!
    var anxBool : Bool = false;
    @IBOutlet weak var anxiety: UIButton!
    var diarBool : Bool = false;
    @IBOutlet weak var Diarrhea: UIButton!
    var backBool : Bool = false;
    @IBOutlet weak var backPain: UIButton!
    var cancerBool : Bool = false;
    @IBOutlet weak var Cancer: UIButton!
    var thyroidBool : Bool = false;
    @IBOutlet weak var thyroid: UIButton!
    var burnBool : Bool = false;
    @IBOutlet weak var heartBurn: UIButton!
    var ulcerBool : Bool = false;
    @IBOutlet weak var ulcer: UIButton!
    var hivBool : Bool = false;
    @IBOutlet weak var Hiv: UIButton!
    var kidneyBool : Bool = false;
    @IBOutlet weak var kidney: UIButton!
    var heartBool : Bool = false;
    @IBOutlet weak var heartDisease: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartDisease.setImage(nil, for: UIControlState.normal)
        coughing.setImage(nil, for: UIControlState.normal)
        diabetes.setImage(nil, for: UIControlState.normal)
        asthma.setImage(nil, for: UIControlState.normal)
        breath.setImage(nil, for: UIControlState.normal)
        BloodPressure.setImage(nil, for: UIControlState.normal)
        Chest.setImage(nil, for: UIControlState.normal)
        pee.setImage(nil, for: UIControlState.normal)
        arthritis.setImage(nil, for: UIControlState.normal)
        depressiom.setImage(nil, for: UIControlState.normal)
        Stroke.setImage(nil, for: UIControlState.normal)
        anxiety.setImage(nil, for: UIControlState.normal)
        Diarrhea.setImage(nil, for: UIControlState.normal)
        backPain.setImage(nil, for: UIControlState.normal)
        Cancer.setImage(nil, for: UIControlState.normal)
        thyroid.setImage(nil, for: UIControlState.normal)
        ulcer.setImage(nil, for: UIControlState.normal)
        Hiv.setImage(nil, for: UIControlState.normal)
        kidney.setImage(nil, for: UIControlState.normal)
        heartBurn.setImage(nil, for: UIControlState.normal)
        navigationController?.navigationBar.isHidden = false

        // Do any additional setup after loading the view.
    }

    
    @IBAction func heartSet(_ sender: Any) {
        if (heartDisease.isTouchInside && heartBool == false){
            heartDisease.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            heartBool = true;
        } else if (heartDisease.isTouchInside && heartBool == true){
            heartDisease.setImage(nil, for: UIControlState.normal)
            heartBool = false
        }
    }
    
    @IBAction func chestSet(_ sender: Any) {
        if (Chest.isTouchInside && chestBool == false){
            Chest.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            chestBool = true;
        } else if (Chest.isTouchInside && chestBool == true){
            Chest.setImage(nil, for: UIControlState.normal)
            chestBool = false
        }
    }
    
    @IBAction func bloodSet(_ sender: Any) {
        if (BloodPressure.isTouchInside && bloodBool == false){
            BloodPressure.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            bloodBool = true;
        } else if (BloodPressure.isTouchInside && bloodBool == true){
            BloodPressure.setImage(nil, for: UIControlState.normal)
            bloodBool = false
        }
    }
    
    @IBAction func breathSet(_ sender: Any) {
        if (breath.isTouchInside && breathBool == false){
            breath.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            breathBool = true;
        } else if (breath.isTouchInside && breathBool == true){
            breath.setImage(nil, for: UIControlState.normal)
            breathBool = false
        }
    }
    
    @IBAction func asthmaSet(_ sender: Any) {
        if (asthma.isTouchInside && asthmaBool == false){
            asthma.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            asthmaBool = true;
        } else if (asthma.isTouchInside && asthmaBool == true){
            asthma.setImage(nil, for: UIControlState.normal)
            asthmaBool = false
        }
    }
    @IBAction func coughSet(_ sender: Any) {
        if (coughing.isTouchInside && coughBool == false){
            coughing.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            coughBool = true;
        } else if (coughing.isTouchInside && coughBool == true){
            coughing.setImage(nil, for: UIControlState.normal)
            coughBool = false
        }
    }
    @IBAction func diabetesSet(_ sender: Any) {
        if (diabetes.isTouchInside && dBool == false){
            diabetes.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            dBool = true;
        } else if (diabetes.isTouchInside && dBool == true){
            diabetes.setImage(nil, for: UIControlState.normal)
            dBool = false
        }
    }
    @IBAction func thyroidSet(_ sender: Any) {
        if (thyroid.isTouchInside && thyroidBool == false){
            thyroid.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            thyroidBool = true;
        } else if (thyroid.isTouchInside && thyroidBool == true){
            thyroid.setImage(nil, for: UIControlState.normal)
            thyroidBool = false
        }
    }
    @IBAction func arthritisSet(_ sender: Any) {
        if (arthritis.isTouchInside && arthBool == false){
            arthritis.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            arthBool = true;
        } else if (arthritis.isTouchInside && arthBool == true){
            arthritis.setImage(nil, for: UIControlState.normal)
            arthBool = false
        }
    }
    @IBAction func kidneySet(_ sender: Any) {
        if (kidney.isTouchInside && kidneyBool == false){
            kidney.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            kidneyBool = true;
        } else if (kidney.isTouchInside && kidneyBool == true){
            kidney.setImage(nil, for: UIControlState.normal)
            kidneyBool = false
        }
    }
    @IBAction func peeSet(_ sender: Any) {
        if (pee.isTouchInside && peeBool == false){
            pee.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            peeBool = true;
        } else if (pee.isTouchInside && peeBool == true){
            pee.setImage(nil, for: UIControlState.normal)
            peeBool = false
        }
    }
    @IBAction func depressionSet(_ sender: Any) {
        if (depressiom.isTouchInside && depBool == false){
            depressiom.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            depBool = true;
        } else if (depressiom.isTouchInside && depBool == true){
            depressiom.setImage(nil, for: UIControlState.normal)
            depBool = false
        }
    }
    @IBAction func strokeSet(_ sender: Any) {
        if (Stroke.isTouchInside && strokeBool == false){
            Stroke.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            strokeBool = true;
        } else if (Stroke.isTouchInside && strokeBool == true){
            Stroke.setImage(nil, for: UIControlState.normal)
            strokeBool = false
        }
    }
    @IBAction func anxietySet(_ sender: Any) {
        if (anxiety.isTouchInside && anxBool == false){
            anxiety.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            anxBool = true;
        } else if (anxiety.isTouchInside && anxBool == true){
            anxiety.setImage(nil, for: UIControlState.normal)
            anxBool = false
        }
    }
    @IBAction func backSet(_ sender: Any) {
        if (backPain.isTouchInside && backBool == false){
            backPain.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            backBool = true;
        } else if (backPain.isTouchInside && backBool == true){
            backPain.setImage(nil, for: UIControlState.normal)
            backBool = false
        }
    }
    @IBAction func hivSet(_ sender: Any) {
        if (Hiv.isTouchInside && hivBool == false){
            Hiv.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            hivBool = true;
        } else if (Hiv.isTouchInside && hivBool == true){
            Hiv.setImage(nil, for: UIControlState.normal)
            hivBool = false
        }
    }
    @IBAction func diarrheaSet(_ sender: Any) {
        if (Diarrhea.isTouchInside && diarBool == false){
            Diarrhea.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            diarBool = true;
        } else if (Diarrhea.isTouchInside && diarBool == true){
            Diarrhea.setImage(nil, for: UIControlState.normal)
            diarBool = false
        }
    }
    @IBAction func ulcerSet(_ sender: Any) {
        if (ulcer.isTouchInside && ulcerBool == false){
            ulcer.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            ulcerBool = true;
        } else if (ulcer.isTouchInside && ulcerBool == true){
            ulcer.setImage(nil, for: UIControlState.normal)
            ulcerBool = false
        }
    }
    @IBAction func heartBurnSet(_ sender: Any) {
        if (heartBurn.isTouchInside && burnBool == false){
            heartBurn.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            burnBool = true;
        } else if (heartBurn.isTouchInside && burnBool == true){
            heartBurn.setImage(nil, for: UIControlState.normal)
            burnBool = false
        }
    }
    @IBAction func cancerSet(_ sender: Any) {
        if (Cancer.isTouchInside && cancerBool == false){
            Cancer.setImage(UIImage (named: "Artboard 2"), for: UIControlState.normal)
            cancerBool = true;
        } else if (Cancer.isTouchInside && cancerBool == true){
            Cancer.setImage(nil, for: UIControlState.normal)
            cancerBool = false
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
