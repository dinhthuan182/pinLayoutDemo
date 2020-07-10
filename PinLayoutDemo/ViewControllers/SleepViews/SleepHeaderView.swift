//
//  SleepHeaderView.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class SleepHeaderView: UIView {
    
    private let contentView = UIView ()
    private let titleLabel = UILabel()
    private let timeLabel = UILabel()
    private let alarmButton = UIButton()
    
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
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        addSubview(contentView)
        
        titleLabel.text = "set alarm time"
        titleLabel.numberOfLines = 0
        contentView.addSubview(titleLabel)
        
        timeLabel.text = "17:00"
        timeLabel.backgroundColor = .orange
        contentView.addSubview(timeLabel)
        
        alarmButton.setTitle("alarm", for: .normal)
        alarmButton.setTitleColor(.blue, for: .normal)
        alarmButton.backgroundColor = .systemBlue
        contentView.addSubview(alarmButton)
    }
    
    func layoutView() {
        titleLabel.pin.centerLeft().bottom().margin(10)
        .width(100).sizeToFit(.width)
        
        timeLabel.pin.after(of: titleLabel, aligned: .center).marginLeft(10)
            .width(100).sizeToFit(.width)
        
        alarmButton.pin.after(of: timeLabel, aligned: .center).marginLeft(10)
        .width(100).sizeToFit(.width)
    }

}
