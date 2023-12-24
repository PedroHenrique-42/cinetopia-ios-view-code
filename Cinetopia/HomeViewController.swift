//
//  ViewController.swift
//  Cinetopia
//
//  Created by Pedro Henrique on 24/12/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text =  "Hello, World!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundColor")
        
        addSubviews()
        setUpConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(label)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

}

