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
        QandAArray.shuffle()
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
    
    func showQandA(){
        QuestionLabel.text = CurrentQandA.Question
        OptionAOutlet.setTitle(CurrentQandA.OptionA, for: .normal)
        OptionBOutlet.setTitle(CurrentQandA.OptionB, for: .normal)
        OptionCOutlet.setTitle(CurrentQandA.OptionC, for: .normal)
        OptionDOutlet.setTitle(CurrentQandA.OptionD, for: .normal)
    }
    
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
    
    func doItRight(){
        let controller = UIAlertController(title: "無毋著！", message: "厲害喔！", preferredStyle: .alert)
        if NumbersOfCurrentQandA == 9{
            let action = UIAlertAction(title: "完成！", style: .cancel, handler: nextPage)
            controller.addAction(action)
        }else{
            let action = UIAlertAction(title: "繼續", style: .cancel, handler: reloadPage)
            controller.addAction(action)
        }
        
        present(controller, animated: true)
        NumbersOfCorrect += 1
    }
    
    func doItWrong(){
        let controller = UIAlertController(title: "毋著矣！", message: "哇……", preferredStyle: .alert)
        if NumbersOfCurrentQandA == 9{
            let action = UIAlertAction(title: "完成！", style: .cancel, handler: nextPage)
            controller.addAction(action)
        }else{
            let action = UIAlertAction(title: "繼續", style: .cancel, handler: reloadPage)
            controller.addAction(action)
        }
        
        present(controller, animated: true)
        
    }
    
    func reloadPage (alert: UIAlertAction!){
        NumbersOfCurrentQandA += 1
        CurrentQandA = QandAArray[NumbersOfCurrentQandA]
        showQandA()
        NumbersOfQuestionsLabel.text = "第 \(NumbersOfCurrentQandA+1) 題"
    }
    
//    @IBSegueAction func endQuizAction(_ coder: NSCoder) -> FinishedViewController? {
//        let controller = FinishedViewController()
//        controller.FinalScore = NumbersOfCorrect * 10
//        return controller
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EndQuiz"{
            if let controller = segue.destination as? FinishedViewController{
                controller.FinalScore = NumbersOfCorrect * 10
            }
        }
    }
    
    func nextPage(alert: UIAlertAction!){
        performSegue(withIdentifier: "EndQuiz", sender: UIAlertAction.self)
        
//        let segue = UIStoryboardSegue(identifier: "EndQuiz", source: self, destination: FinishedViewController())
////        prepare(for: segue){
    
//        }
    }
    
    //檢查是不是超過10題
    //到第10題的話跳下一頁
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
