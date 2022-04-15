//
//  CardView.swift
//  walletAppUIKit
//
//  Created by Fedii Ihor on 13.04.2022.
//

import UIKit
import SnapKit

protocol CardViewDelegate: AnyObject {
    func slideCards()
}

class CardView: UIView {
    
    weak var delegate: CardViewDelegate?
    
    let numberLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "1234 5678 1234 1234"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 25)
        return lbl
    }()
    
    let countryLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "UI"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 70)
        return lbl
    }()
    
    let actionButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        return btn
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(numberLabel)
        addSubview(countryLabel)
        addSubview(actionButton)
        actionButton.addTarget(self,
                      action:#selector(didTapActionButton),
                      for: .touchUpInside)
        layer.cornerRadius = 10
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 2
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        numberLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(10)
            $0.bottom.equalToSuperview().offset(-10)
        }
        countryLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
        actionButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension CardView {
    @objc func didTapActionButton(){
        delegate?.slideCards()
    }
}
