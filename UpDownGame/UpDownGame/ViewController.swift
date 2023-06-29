//
//  ViewController.swift
//  UpDownGame
//
//  Created by 이재희 on 2023/06/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    //var myNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인 레이블에 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        // 2) 숫자 레이블은 "" 표시
        numberLabel.text = ""
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져옴
        let num = sender.currentTitle!
        // 2) 숫자 레이블 변경
        numberLabel.text = num
        // 3) (선택사항)선택한 숫자 변수에 저장
        //myNumber = Int(num)!
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        comNumber = Int.random(in: 1...10)
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자 비교해서 메인 레이블에 표시
        /*
         if myNumber == comNumber {
            mainLabel.text = "⭐️Bingo⭐️"
        } else if myNumber < comNumber {
            mainLabel.text = "UP"
        } else {
            mainLabel.text = "Down"
        }
        */
        guard let myNumStr = numberLabel.text else { return }
        guard let myNumber = Int(myNumStr) else { return }
        
        if myNumber == comNumber {
            mainLabel.text = "⭐️Bingo⭐️"
        } else if myNumber < comNumber {
            mainLabel.text = "UP"
        } else {
            mainLabel.text = "Down"
        }
        
    }
    
    

}

