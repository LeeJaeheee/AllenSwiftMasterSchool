//
//  ViewController.swift
//  RPSGame
//
//  Created by 이재희 on 2023/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comChoice: RPS = RPS(rawValue: Int.random(in: 0...2))!
    var myChoice: RPS = RPS.rock
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "선택하세요"
        comChoice = RPS(rawValue: Int.random(in: 0...2))!
        
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = #imageLiteral(resourceName: "ready")
        //myImageView.image = UIImage(named: "ready.png")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else {
            return
        }
        switch title {
        case "가위":
            myChoice = RPS.scissors
        case "바위":
            myChoice = RPS.rock
        case "보":
            myChoice = RPS.paper
        default:
            break
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comChoice {
        case RPS.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case RPS.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case RPS.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        switch myChoice {
        case RPS.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case RPS.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case RPS.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        viewDidLoad()
    }
    
}


