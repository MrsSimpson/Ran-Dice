//
//  ViewController.swift
//  Ran-Dice
//
//  Created by Lacy Simpson on 11/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dice1Btn: UIButton!
    var dice1Active = true
    
    @IBOutlet var dice2Btn: UIButton!
    var dice2Active = true
    
    @IBOutlet var dice3Btn: UIButton!
    var dice3Active = true
        
    @IBOutlet var dice4Btn: UIButton!
    var dice4Active = true
    
    @IBOutlet var dice5Btn: UIButton!
    var dice5Active = true
    
    @IBOutlet var clearBtn: UIButton!
    
    @IBOutlet var rollBtn: UIButton!
    
    
    
    let diceArry = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearBtnPress(clearBtn)
        dice1Btn.setTitle("", for: .normal)
        dice2Btn.setTitle("", for: .normal)
        dice3Btn.setTitle("", for: .normal)
        dice4Btn.setTitle("", for: .normal)
        dice5Btn.setTitle("", for: .normal)
        //#colorLiteral()
        //let buttonColor = #colorLiteral(red: 0.8359460235, green: 0.7865269184, blue: 0.7224037051, alpha: 1)
        
    }

    @IBAction func dice1Pressed() {
        dice1Active = !dice1Active
        if !dice1Active {
            disableDice(dice: dice1Btn)
            
        } else {
            enableDice(dice: dice1Btn)
        }
    }
    
    @IBAction func dice2Pressed() {
        dice2Active = !dice2Active
        if !dice2Active {
            disableDice(dice: dice2Btn)
        } else {
            enableDice(dice: dice2Btn)
        }
    }
    
    @IBAction func dice3Pressed() {
        dice3Active = !dice3Active
        if !dice3Active {
            disableDice(dice: dice3Btn)
        } else {
            enableDice(dice: dice3Btn)
        }
    }
    
    @IBAction func dice4Pressed() {
        dice4Active = !dice4Active
        if !dice4Active {
            disableDice(dice: dice4Btn)
        } else {
            enableDice(dice: dice4Btn)
        }
    }
    
    @IBAction func dice5Pressed() {
        dice5Active = !dice5Active
        if !dice5Active {
            disableDice(dice: dice5Btn)
        } else {
            enableDice(dice: dice5Btn)
        }
    }
    
    @IBAction func rollBtnPress(_ sender: UIButton) {
        
        //make sure dice can be clicked (could have been disabled if clear was pressed prior)
        dice1Btn.isEnabled = true
        dice2Btn.isEnabled = true
        dice3Btn.isEnabled = true
        dice4Btn.isEnabled = true
        dice5Btn.isEnabled = true
        
        if dice1Active{
            dice1Btn.setImage(diceArry.randomElement(), for: .normal)
        }
        if dice2Active{
            dice2Btn.setImage(diceArry.randomElement(), for: .normal)
        }
        if dice3Active{
            dice3Btn.setImage(diceArry.randomElement(), for: .normal)
        }
        if dice4Active{
            dice4Btn.setImage(diceArry.randomElement(), for: .normal)
        }
        if dice5Active{
            dice5Btn.setImage(diceArry.randomElement(), for: .normal)
        }
        
        
    }
    
    
    @IBAction func clearBtnPress(_ sender: UIButton) {
        
        dice1Btn.setImage(UIImage(named: "BlueBackground.png"), for: .normal)
        dice2Btn.setImage(UIImage(named: "BlueBackground.png"), for: .normal)
        dice3Btn.setImage(UIImage(named: "BlueBackground.png"), for: .normal)
        dice4Btn.setImage(UIImage(named: "BlueBackground.png"), for: .normal)
        dice5Btn.setImage(UIImage(named: "BlueBackground.png"), for: .normal)
        //dice1Btn.setImage(nil, for: .normal)
        //dice2Btn.setImage(nil, for: .normal)
        //dice3Btn.setImage(nil, for: .normal)
        //dice4Btn.setImage(nil, for: .normal)
        //dice5Btn.setImage(nil, for: .normal)

        
        //remove highlight
        enableDice(dice: dice1Btn)
        enableDice(dice: dice2Btn)
        enableDice(dice: dice3Btn)
        enableDice(dice: dice4Btn)
        enableDice(dice: dice5Btn)
        
        //make each dice active
        dice1Active = true
        dice2Active = true
        dice3Active = true
        dice4Active = true
        dice5Active = true
        
        //disable user from clicking dice space to highlight
        dice1Btn.isEnabled = false
        dice2Btn.isEnabled = false
        dice3Btn.isEnabled = false
        dice4Btn.isEnabled = false
        dice5Btn.isEnabled = false

    }
    
    func disableDice(dice: UIButton) {
        
        
        let opacity:CGFloat = 0.5
        let borderColor = UIColor.white
        
        dice.layer.cornerRadius = 10
        dice.layer.borderWidth = 10
        dice.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
    }
    
    func enableDice(dice: UIButton){
        dice.layer.borderWidth = 0
    }
}



