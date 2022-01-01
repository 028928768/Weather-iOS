//
//  ViewController.swift
//  Weather-iOS-app
//
//  Created by Simon on 1/1/2565 BE.
//

import UIKit

class WeatherViewController: UIViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        customiseUI()
        configure()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    private func customiseUI() {
     
        setupStatusBarAndTabbar()
    }
    
    private func configure() {
        
    }
    
    private func setupStatusBarAndTabbar() {
//        statusbarViewConstraint.constant = UIApplication.shared.statusBarFrame.height
    }


}

