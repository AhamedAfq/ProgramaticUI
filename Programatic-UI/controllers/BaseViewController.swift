//
//  BaseViewController.swift
//  Programatic-UI
//
//  Created by Ashfak Ahamed Alauddeen on 30/11/25.
//


// File: BaseViewController.swift

import UIKit
class BaseViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupViews()
        setupConstraints()
        bindViewModel()
    }
    
    
    func setup() {}
    func setupViews() {}
    func setupConstraints() {}
    func bindViewModel() {}
}
