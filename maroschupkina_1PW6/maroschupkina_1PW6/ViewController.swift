//
//  ViewController.swift
//  maroschupkina_1PW6
//
//  Created by Marina Roshchupkina on 18.11.2021.
//

import UIKit
import MyLogger1
import MyLogger2
import MyLogger3
// import MyLogger4

class ViewController: UIViewController {
    @IBOutlet weak var frameworkButton: UIButton!
    @IBOutlet weak var packageButton: UIButton!
    @IBOutlet weak var podButton: UIButton!
    @IBOutlet weak var carthageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frameworkButton.addTarget(self, action: #selector(frameworkClick(sender:)), for: .touchDown)
        packageButton.addTarget(self, action: #selector(packageClick(sender:)), for: .touchDown)
        podButton.addTarget(self, action: #selector(podClick(sender:)), for: .touchDown)
    
    }
    @objc func frameworkClick(sender: Any) {
        MyLogger1.log("kachow")
    }
    @objc func packageClick(sender: Any) {
        MyLogger2.log("yeet")
    }
    @objc func podClick(sender: Any) {
        MyLogger3.log("bruh")
    }
    
    
}

