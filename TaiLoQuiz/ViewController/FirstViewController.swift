//
//  FirstViewController.swift
//  TaiLoQuiz
//
//  Created by tantsunsin on 2020/8/1.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import UIKit
import SafariServices

class FirstViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openWebsite(_ sender: UIButton) {
        let url = URL(string: "https://tailo.moe.edu.tw/main.htm")
        let controller = SFSafariViewController(url: url!)
        present(controller, animated: true, completion: nil)
    }
    
    
    //Button開啟網頁：https://tailo.moe.edu.tw/main.htm

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
