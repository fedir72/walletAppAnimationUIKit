//
//  ViewController.swift
//  walletAppUIKit
//
//  Created by Fedii Ihor on 13.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let card = CardView()
    let card2 = CardView()
    let card3 = CardView()
    
    
    
    //MARK: - class properies
    var isSlide: Bool = false
    var startY1: CGFloat = 100
    var startY2: CGFloat = 160
    var startY3: CGFloat = 220
    
    var height: CGFloat?
    var widht: CGFloat?
    var stopY2: CGFloat?
    var stopY3: CGFloat?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        card.backgroundColor = .systemBlue
        card2.countryLabel.text = "US"
        card2.backgroundColor = .systemOrange
        card3.countryLabel.text = "CA"
        card3.backgroundColor = .systemGreen
        
        addSubviews()
        setupConstraints()
        card.delegate = self
        
        self.height = view.frame.height/4
        self.widht = height!*1.6
        self.stopY2 = startY1 + height! + 20
        self.stopY3 = stopY2! + height! + 20
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

private extension ViewController {
    
    func addSubviews() {
        view.addSubview(card)
        view.addSubview(card2)
        view.addSubview(card3)
    }
    
    func setupConstraints() {
        card.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(startY1)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.25)
        }
        
        card2.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(startY2)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.25)
        }
        
        card3.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(startY3)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.25)
        }
    }
}

extension ViewController: CardViewDelegate {
    
    func slideCards() {
        print("slideCards")
        switch isSlide {
        case true:
            card2.snp.updateConstraints {
                $0.top.equalToSuperview().offset(startY2)
            }
            
            card3.snp.updateConstraints {
                $0.top.equalToSuperview().offset(startY3)
            }
            
        case false:
            card2.snp.updateConstraints {
                $0.top.equalToSuperview().offset(stopY2!)
            }
            
            card3.snp.updateConstraints {
                $0.top.equalToSuperview().offset(stopY3!)
            }
        }
        
        
        
        UIView.animate(withDuration: 1,
                       delay: 0.2,
                       usingSpringWithDamping: 0.9,
                       initialSpringVelocity: 0.2,
                       options: .curveEaseIn) {
            self.view.layoutIfNeeded()
            self.isSlide.toggle()
        }

    }
}
