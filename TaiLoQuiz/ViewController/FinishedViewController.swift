//
//  FinishedViewController.swift
//  TaiLoQuiz
//
//  Created by tantsunsin on 2020/8/1.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import UIKit

class FinishedViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setScore()
        // Do any additional setup after loading the view.
    }
    var FinalScore : Int = 0
    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    // 最終得分顯示
    func setScore(){
        ScoreLabel.text = String(FinalScore)
    }
    
    // 分享得分
    @IBAction func share(_ sender: Any) {
        let controller = UIActivityViewController(activityItems: ["我佇台羅小測驗得著\(FinalScore)分！"], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }
    

}
