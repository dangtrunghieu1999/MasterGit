//
//  ViewController.swift
//  MasterGithub
//
//  Created by Trung Hieu on 9/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Home view"
    }
}
