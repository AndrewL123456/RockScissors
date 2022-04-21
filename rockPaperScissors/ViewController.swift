//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Lujan, Andrew - Student on 5/3/21.
//  Copyright © 2021 Lujan, Andrew - Student. All rights reserved.
//

import UIKit
var toWinnerStoryboard: Bool!
var rockPicked: Bool!
var scissorsPicked: Bool!
var paperPicked: Bool!
var playerChoice: Int!
var compCount = 0
var playerCount = 0





class ViewController: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func returnButton(_ sender: Any) {
    }
    
    @IBAction func rockButton(_ sender: Any) {
        toWinnerStoryboard = true
        performSegue(withIdentifier: "toWinnerStoryboard", sender: nil)
        playerChoice = 0
     //   print ("\(playerChoice)")
        
    }
    
    @IBAction func paperButton(_ sender: Any) {
        toWinnerStoryboard = true
        performSegue(withIdentifier: "toWinnerStoryboard", sender: nil)
        playerChoice = 1
        paperPicked = true
       // print ("\(playerChoice)")
    }
    
    
    @IBAction func scissorsButton(_ sender: Any) {
        toWinnerStoryboard = true
        performSegue(withIdentifier: "toWinnerStoryboard", sender: nil)
        playerChoice = 2
        scissorsPicked = true
       // print ("\(playerChoice)")
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! winnerViewController
        nvc.toWinnerStoryboardPassed = toWinnerStoryboard
       // let playerChoice = sender as! Int?
        if segue.destination is winnerViewController {
        nvc.playerChoice = playerChoice
            nvc.compCount = compCount
            nvc.playerCount = playerCount
        }
        //the solutions below were to try and pass rockpicked as true if rock was picked and I have no idea if it worked since if rockPicked = true wont work
        //if segue.identifier == "winnerViewController" {
        
       // while playerChoice == 0 {
           // rockPicked = true
          
           // }
        }
    
    
    //@IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
      }
    

//}

