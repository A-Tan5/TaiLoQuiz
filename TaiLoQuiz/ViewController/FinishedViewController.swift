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
    
    func setScore(){
        ScoreLabel.text = String(FinalScore)
    }
    
    @IBAction func share(_ sender: Any) {
        let controller = UIActivityViewController(activityItems: ["我佇台羅小測驗得著\(FinalScore)分！"], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }
    
    
    
    
    
    // 算得分
    // 重來，跳回第一頁
    // 分享！“我佇台羅小測驗得著……分”

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
