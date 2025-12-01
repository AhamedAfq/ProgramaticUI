//
//  SecondScreenViewController.swift
//  Programatic-UI
//
//  Created by Ashfak Ahamed on 29/07/24.
//

import UIKit

class DestinationVC: BaseViewController {
    
    let button = UIButton()

    override func setupViews() {
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(button)
        
    }
    
    override func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = .systemPink
        button.configuration?.title = "Reached Destination"
    }
}
