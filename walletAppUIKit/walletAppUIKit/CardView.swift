//
//  CardView.swift
//  walletAppUIKit
//
//  Created by Fedii Ihor on 13.04.2022.
//

import UIKit
import SnapKit

class CardView: UIView {
    
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
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(numberLabel)
        addSubview(countryLabel)
        layer.cornerRadius = 10
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 2
       // backgroundColor = .systemBlue
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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
