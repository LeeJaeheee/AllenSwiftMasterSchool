//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 이재희 on 2023/06/25.
//

import UIKit

// 스토리보드에서 하나의 화면은 하나의 뷰컨트롤러로 관리가 된다.
class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mainLabel.text = "방가방가"
//        mainLabel.backgroundColor = UIColor.systemCyan
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.text = "안녕하세요"
        
//         방법 1: #colorLiteral( 입력하면 전환됨
//        mainLabel.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
//         방법 2
//        mainLabel.backgroundColor = UIColor.systemTeal
//         방법 3
//        mainLabel.backgroundColor = UIColor(red: 233/255, green: 128/255, blue: 187/255, alpha: 1)
//
//        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        mainLabel.textAlignment = NSTextAlignment.left
        
    }
    
}

