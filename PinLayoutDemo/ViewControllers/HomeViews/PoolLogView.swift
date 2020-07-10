//
//  PoolLogView.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class PoopLogView: UIView {

    private let contentView = UIView()
    private let titleLabel = UILabel()
    private let dateLabel = UILabel()
    private let timeLabel = UILabel()
    private let poolImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initUI()
    }
    
    override func layoutSubviews() {
        layoutView()
    }
    
    func initUI() {
        contentView.backgroundColor = UIColor.systemYellow.withAlphaComponent(0.7)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = .systemYellow
        addSubview(contentView)
        
        poolImageView.image = UIImage(named: "icon-poop-kind3-large")
        addSubview(poolImageView)
        
        titleLabel.text = "TITLE"
        titleLabel.font = .systemFont(ofSize: 17)
        contentView.addSubview(titleLabel)
        
        dateLabel.text = "2020.02.20"
        dateLabel.font = .systemFont(ofSize: 15)
        contentView.addSubview(dateLabel)
        
        timeLabel.text = "1 hour 2 minute"
        timeLabel.font = .systemFont(ofSize: 15)
        contentView.addSubview(timeLabel)
    }
    
    func layoutView() {
        
    }
}
