//
//  winnerViewController.swift
//  rockPaperScissors
//
//  Created by Lujan, Andrew - Student on 5/6/21.
//  Copyright © 2021 Lujan, Andrew - Student. All rights reserved.
//
import UIKit


class winnerViewController: UIViewController {
    
    var rockPicked: Bool!
    var scissorsPicked: Bool!
    var paperPicked: Bool!
    var toWinnerStoryboardPassed : Bool!
    var playerChoice: Int!
    var randomNum = Int(arc4random_uniform(3))
    var compCount = 0
    var playerCount = 0

   
    
    @IBOutlet weak var winnerLabel: UILabel!
    
   
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playerChoice == 0 {
               rockPicked = true
           }
           else if playerChoice == 1 {
               paperPicked = true
           }
           else {
               scissorsPicked = true
           }
        
        if rockPicked == true {
        
             if randomNum == 0 {
                 winnerLabel.text = "Tie"
                rockPicked = false
               
              //var playerChoice: Int!
         }
         else if randomNum == 1 {
         winnerLabel.text = "You lose, computer picked paper"
                rockPicked = false
               
                //var playerChoice: Int!
        }
        else {
         winnerLabel.text = "You won, computer picked scissors"
                rockPicked = false
              
                //var playerChoice: Int!
         }
        }
        if scissorsPicked == true {
            if randomNum == 0 {
                winnerLabel.text = "You lose, computer picked rock"
               
            }
            else if randomNum == 1 {
                winnerLabel.text = "You won, computer picked paper"
               
            }
            else {
                winnerLabel.text = "Tie"
            }
        }
        if paperPicked == true {
            if randomNum == 0 {
                winnerLabel.text = "You won, computer picked rock"
              
            }
            else if randomNum == 1 {
                winnerLabel.text = "You lose, computer picked scissors"
               
            }
            else {
                winnerLabel.text = "Tie"
            }
        }

        
        
        
        // Do any additional setup after loading the view.
    }
   
   
   
    
   @IBAction func goBack (sender: UIButton) {
   // self.performSegue(withIdentifier: "unwindToFirstViewController", sender: nil)
    self.dismiss(animated: true, completion: nil)
    toWinnerStoryboardPassed = false
   // print ("\(playerChoice)")
       
   
   }
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          let ovc = segue.destination as! ViewController
//          ovc.compCount = compCount
//          ovc.playerCount = playerCount
    /*
    // MARK: - Navigation

    //3 In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
