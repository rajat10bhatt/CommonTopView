//
//  BaseViewController.swift
//  TopViewDemo
//
//  Created by Rajat Bhatt on 02/06/18.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    @IBOutlet weak var viewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerView: UIView!
    let height: CGFloat = 50
    var addView = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTopView()
    }
    
    func initializeTopView() {
        if addView {
            self.viewTopConstraint.isActive = false
            let view = UIView()
            view.backgroundColor = UIColor.cyan
            self.view.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            view.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
            view.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
            view.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
            view.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }

}
