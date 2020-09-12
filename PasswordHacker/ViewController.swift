//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Yamamoto Miu on 2020/09/12.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1 : UILabel!
    @IBOutlet var resultLabel2 : UILabel!
    @IBOutlet var resultLabel3 : UILabel!
    @IBOutlet var resultLabel4 : UILabel!
    
    @IBOutlet var countLabel :UILabel!
    //秘密のパスワード
    var password = Int.random(in:1000...9999)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999 {
            countLabel.text = String(i)
            //処理を待機させる
            RunLoop.main.run(until:Date(timeIntervalSinceNow: 0.0005))
            if i == password {
                var digits = [Int]()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
        }
    }
    @IBAction func reset(){
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
        password = Int.random(in:1000...9999)
        countLabel.text = "「START」ボタンを押して解析開始"
    }


}

