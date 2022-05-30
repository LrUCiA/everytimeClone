//
//  NavigationTitle.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit

class NavigationTitle: UIStackView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(w: 41)
        label.textAlignment = .center
        label.text = "자유게시판"
        label.numberOfLines = 1
        return label
    }()
    
    private let universityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(w: 115)
        label.textAlignment = .center
        label.text = "OO대"
        label.numberOfLines = 1
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addArrangedSubview(self.titleLabel)
        self.addArrangedSubview(self.universityLabel)
        self.axis = .vertical
        self.spacing = 0
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
