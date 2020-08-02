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
    
    // Button開啟網頁
    @IBAction func openWebsite(_ sender: UIButton) {
        let url = URL(string: "https://tailo.moe.edu.tw/main.htm")
        let controller = SFSafariViewController(url: url!)
        present(controller, animated: true, completion: nil)
    }

}
