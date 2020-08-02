//
//  QuizViewController.swift
//  TaiLoQuiz
//
//  Created by tantsunsin on 2020/8/1.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        QandAArray.shuffle() // 一開始就先打亂Array順序
        CurrentQandA = QandAArray[NumbersOfCurrentQandA]
        showQandA()
    }
    
    var CorrectAnswer : String = ""
    var SelectedAnswer : String = ""
    var NumbersOfCorrect : Int = 0
    var CurrentQandA = QandA(Question: "", OptionA: "", OptionB: "", OptionC: "", OptionD: "", Answer: "")
    var NumbersOfCurrentQandA : Int = 0
    
    @IBOutlet weak var NumberOfQuestion: UILabel!
    @IBOutlet weak var NumbersOfQuestionsLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var OptionAOutlet: UIButton!
    @IBOutlet weak var OptionBOutlet: UIButton!
    @IBOutlet weak var OptionCOutlet: UIButton!
    @IBOutlet weak var OptionDOutlet: UIButton!
    
    // 問題跟答案的呈現
    func showQandA(){
        QuestionLabel.text = CurrentQandA.Question
        OptionAOutlet.setTitle(CurrentQandA.OptionA, for: .normal)
        OptionBOutlet.setTitle(CurrentQandA.OptionB, for: .normal)
        OptionCOutlet.setTitle(CurrentQandA.OptionC, for: .normal)
        OptionDOutlet.setTitle(CurrentQandA.OptionD, for: .normal)
    }
    
    // 點選答案後的動作
    @IBAction func clickonAnswer(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            SelectedAnswer = CurrentQandA.OptionA
        case 2:
            SelectedAnswer = CurrentQandA.OptionB
        case 3:
            SelectedAnswer = CurrentQandA.OptionC
        case 4:
            SelectedAnswer = CurrentQandA.OptionD
        default:
            break
        }
        
        if SelectedAnswer == CurrentQandA.Answer{
            doItRight()
        }else{
            doItWrong()
        }
    }
    
    // 答案正確時的動作，顯示UIAlertController
    func doItRight(){
        let controller = UIAlertController(title: "無毋著！", message: "厲害喔！", preferredStyle: .alert)
        if NumbersOfCurrentQandA == 9{
            let action = UIAlertAction(title: "完成！", style: .cancel, handler: nextPage) // 十題之後傳到下一頁
            controller.addAction(action)
        }else{
            let action = UIAlertAction(title: "繼續", style: .cancel, handler: reloadPage) // 還沒十題就進下一題
            controller.addAction(action)
        }
        
        present(controller, animated: true)
        NumbersOfCorrect += 1
    }
    
    // 答案錯誤時的動作，顯示UIAlertController
    func doItWrong(){
        let controller = UIAlertController(title: "毋著矣！", message: "哇……", preferredStyle: .alert)
        if NumbersOfCurrentQandA == 9{
            let action = UIAlertAction(title: "完成！", style: .cancel, handler: nextPage) // 十題之後傳到下一頁
            controller.addAction(action)
        }else{
            let action = UIAlertAction(title: "繼續", style: .cancel, handler: reloadPage) // 還沒十題就進下一題
            controller.addAction(action)
        }
        
        present(controller, animated: true)
        
    }
    
    // 進下一題的動作
    func reloadPage (alert: UIAlertAction!){
        NumbersOfCurrentQandA += 1
        CurrentQandA = QandAArray[NumbersOfCurrentQandA]
        showQandA()
        NumbersOfQuestionsLabel.text = "第 \(NumbersOfCurrentQandA+1) 題"
    }
    

    // 先準備好下一頁的資料
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EndQuiz"{
            if let controller = segue.destination as? FinishedViewController{
                controller.FinalScore = NumbersOfCorrect * 10
            }
        }
    }
    
    // 觸發到下一頁的segue
    func nextPage(alert: UIAlertAction!){
        performSegue(withIdentifier: "EndQuiz", sender: UIAlertAction.self)
        
    }
    

}
