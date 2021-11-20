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
    var frameworkButton = UIButton()
    var packageButton = UIButton()
    var podButton = UIButton()
    var charthageButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButtons()
        frameworkButton.addTarget(self, action: #selector(frameworkClick(sender:)), for: .touchDown)
        packageButton.addTarget(self, action: #selector(packageClick(sender:)), for: .touchDown)
        podButton.addTarget(self, action: #selector(podClick(sender:)), for: .touchDown)
        
    }
    
    func setupButtons() {
        view.addSubview(frameworkButton)
        view.addSubview(packageButton)
        view.addSubview(podButton)
        view.addSubview(charthageButton)
        
        frameworkButton.setTitle("framework", for: .normal)
        packageButton.setTitle("package", for: .normal)
        podButton.setTitle("pod", for: .normal)
        charthageButton.setTitle("charthage", for: .normal)
        
        frameworkButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        packageButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        podButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        charthageButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        
        frameworkButton.setTitleColor(UIColor.systemPink, for: .normal)
        packageButton.setTitleColor(UIColor.systemTeal, for: .normal)
        podButton.setTitleColor(UIColor.systemOrange, for: .normal)
        charthageButton.setTitleColor(UIColor.systemGreen, for: .normal)
        
        
        
        frameworkButton.translatesAutoresizingMaskIntoConstraints = false
        frameworkButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -60).isActive = true
        frameworkButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        packageButton.translatesAutoresizingMaskIntoConstraints = false
        packageButton.topAnchor.constraint(equalTo: frameworkButton.bottomAnchor).isActive = true
        packageButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        podButton.translatesAutoresizingMaskIntoConstraints = false
        podButton.topAnchor.constraint(equalTo: packageButton.bottomAnchor).isActive = true
        podButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        charthageButton.translatesAutoresizingMaskIntoConstraints = false
        charthageButton.topAnchor.constraint(equalTo: podButton.bottomAnchor).isActive = true
        charthageButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
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

