//
//  ViewController.swift
//  ChangeColorApp
//
//  Created by jr on 2022/8/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flowerImage: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeColor(_ sender: UISlider) {
        flowerImage.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        if sender == redSlider{
            redLabel.text = String(format: "%.2f", sender.value)
        }else if sender == greenSlider{
            greenLabel.text = String(format: "%.2f", sender.value)
        }else if sender == blueSlider{
            blueLabel.text = String(format: "%.2f", sender.value)
        }else if sender == alphaSlider{
            alphaLabel.text = String(format: "%.2f", sender.value)
        }
        
    }
    
    @IBAction func switchTap(_ sender: UISwitch) {
        if sender == redSwitch{
            redSlider.isEnabled = sender.isOn
        }else if sender == greenSwitch{
        greenSlider.isEnabled = sender.isOn
        }else if sender == blueSwitch{
        blueSlider.isEnabled = sender.isOn
        }else if sender == alphaSwitch{
        alphaSlider.isEnabled = sender.isOn
        }
    }
    
    
    

}

