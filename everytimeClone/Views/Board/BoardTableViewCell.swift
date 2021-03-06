//
//  BoardTableViewCell.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit

class BoardTableViewCell: UITableViewCell {

    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "main_profile_icon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(w: 41)
        label.textAlignment = .left
        label.text = "익명"
        label.numberOfLines = 1
        return label
    }()
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(w: 166)
        label.textAlignment = .right
        label.text = "15분 전"
        label.numberOfLines = 1
        return label
    }()
    
    private let writerContainer: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 6
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(w: 68)
        label.textAlignment = .left
        label.text = "야 ㅋㅋㅋ 당연하지 학식 왜 먹냐? 후문 쪽에 맛집 댕많은데"
        label.numberOfLines = 0
        return label
    }()
    
    private let reactionView = ReactionView()
    
    private let separator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(w: 237)
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        
        self.contentView.addSubview(self.writerContainer)
        self.writerContainer.addArrangedSubview(self.profileImageView)
        self.writerContainer.addArrangedSubview(self.nicknameLabel)
        self.writerContainer.addArrangedSubview(self.timeLabel)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.separator)
        self.contentView.addSubview(self.reactionView)
        
        // Autolayout 설정
        self.writerContainer.translatesAutoresizingMaskIntoConstraints = false
        self.profileImageView.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.reactionView.translatesAutoresizingMaskIntoConstraints = false
        self.separator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.writerContainer.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 15),
            self.writerContainer.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.writerContainer.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.writerContainer.heightAnchor.constraint(equalToConstant: 24),
            self.profileImageView.heightAnchor.constraint(equalToConstant: 24),
            self.profileImageView.widthAnchor.constraint(equalToConstant: 24),
            self.titleLabel.topAnchor.constraint(equalTo: self.writerContainer.bottomAnchor, constant: 4),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -24),
            self.separator.heightAnchor.constraint(equalToConstant: 1),
            
            self.separator.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            self.separator.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            self.separator.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            
            
            self.reactionView.heightAnchor.constraint(equalToConstant: 16),
            self.reactionView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -30),
            self.reactionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -6),
            
        ])
        
    }
    
    func setData(text: String) {
        self.titleLabel.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
