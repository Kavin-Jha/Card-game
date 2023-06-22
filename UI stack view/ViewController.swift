//
//  ViewController.swift
//  UI stack view
//
//  Created by Kavin Jha on 20/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var leftScore = 0
    var rightScore = 0
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    //dealTapped button
    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize Numbers
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        //Using those randomized numbers as card Images in assets
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Conditions for scoring Player and CPU
        if(leftNumber > rightNumber){
            
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        
        else if (leftNumber < rightNumber){
            
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        }
        
        else {
            
            leftScore+=1
            rightScore+=1
        }
        
        
        
    }
    

}

