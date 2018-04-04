//
//  ViewController.swift
//  Alien ImageTimer
//
//  Created by D7703_04 on 2018. 4. 4..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1 //사진의 인덱스 값증가
    var myTimer = Timer()
    var play = 0
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var Index: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 첫번째 이미지를 로드함 로로로롤로롤 나연 ~~~~!
        Index.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btStart(_ sender: Any) {
        if play == 0 {
            myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            play = 1
        } else {
            myTimer.invalidate()
            play = 0
            
        }
    }
    

    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        Index.text = String(counter)
    }

}
