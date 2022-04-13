//
//  ViewController.swift
//  walletAppUIKit
//
//  Created by Fedii Ihor on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let card = CardView()
    let card2 = CardView()
    let card3 = CardView()

    override func viewDidLoad() {
        super.viewDidLoad()
        card.backgroundColor = .systemBlue
        card2.countryLabel.text = "US"
        card2.backgroundColor = .systemOrange
        card3.countryLabel.text = "CA"
        card3.backgroundColor = .systemGreen
        view.addSubview(card)
        view.addSubview(card2)
        view.addSubview(card3)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        title = "Wallet"
        navigationItem.largeTitleDisplayMode = .always
        card.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalToSuperview().dividedBy(4)
        }
        
        card2.snp.makeConstraints {
            $0.top.equalToSuperview().offset(160)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalToSuperview().dividedBy(4)
        }
        card3.snp.makeConstraints {
            $0.top.equalToSuperview().offset(220)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalToSuperview().dividedBy(4)
        }
        
    }


}

