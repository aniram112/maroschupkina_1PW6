//
//  ViewController.swift
//  maroschupkina_1PW6
//
//  Created by Marina Roshchupkina on 18.11.2021.
//

import UIKit
import MyLogger1

class ViewController: UIViewController {
    @IBOutlet weak var frameworkButton: UIButton!
    @IBOutlet weak var packageButton: UIButton!
    @IBOutlet weak var podButton: UIButton!
    
    @IBOutlet weak var carthageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        frameworkButton.addTarget(self, action: #selector(frameworkClick(sender:)), for: .touchDown)
        // Do any additional setup after loading the view.
    }
    @objc func frameworkClick(sender: Any) {
            MyLogger1.log("kachow")
        }


}

