//
//  SleepLogView.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class SleepLogView: UIView {
    
    private let bedTimeView = UIView()
    private let titleLabel = UILabel()
    private let dateLabel = UILabel()
    private let timeLabel = UILabel()
    private let bedTimeImageView = UIImageView()
    private let bedTimeRatingLabel = UILabel()
    private let performanceImageView = UIImageView()
    private let performanceRatingLabel = UILabel()
    
    let chartImageView = UIImageView()
    
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
    
    private func initUI() {
        bedTimeView.backgroundColor = UIColor.systemYellow.withAlphaComponent(0.7)
        bedTimeView.layer.cornerRadius = 10
        bedTimeView.backgroundColor = .systemYellow
        addSubview(bedTimeView)
        
        
        chartImageView.backgroundColor = .lightGray
        addSubview(chartImageView)
        
        titleLabel.text = "TITLE"
        titleLabel.font = .systemFont(ofSize: 17)
        bedTimeView.addSubview(titleLabel)
        
        dateLabel.text = "2020.02.20"
        dateLabel.font = .systemFont(ofSize: 15)
        bedTimeView.addSubview(dateLabel)
        
        timeLabel.text = "1 hour 2 minute"
        timeLabel.font = .systemFont(ofSize: 15)
        bedTimeView.addSubview(timeLabel)
        
        bedTimeImageView.image = UIImage(named: "icon-sun")
        bedTimeImageView.contentMode = .scaleAspectFill
        bedTimeView.addSubview(bedTimeImageView)
        
        bedTimeRatingLabel.text = "★★★★☆"
        bedTimeRatingLabel.font = .systemFont(ofSize: 17)
        bedTimeRatingLabel.textColor = .red
        bedTimeView.addSubview(bedTimeRatingLabel)
        
        performanceImageView.image = UIImage(named: "icon-performance")
        performanceImageView.contentMode = .scaleAspectFill
        bedTimeView.addSubview(performanceImageView)
        
        
        performanceRatingLabel.text = "★★★☆☆"
        performanceRatingLabel.font = .systemFont(ofSize: 17)
        performanceRatingLabel.textColor = .blue
        bedTimeView.addSubview(performanceRatingLabel)
    }
    
    private func layoutView() {
        bedTimeView.pin.topLeft().bottom().margin(7)
            .width(120)
        
        chartImageView.pin.topRight(7).bottomLeft(to: bedTimeView.anchor.bottomRight).marginLeft(10)
        
        titleLabel.pin.topCenter().margin(10).sizeToFit()
        
        dateLabel.pin.below(of: titleLabel).hCenter().marginTop(10)
        .width(of: titleLabel).sizeToFit()
        
        timeLabel.pin.below(of: dateLabel, aligned: .center).width(of: timeLabel).sizeToFit()
        
        bedTimeImageView.pin.below(of: timeLabel).marginTop(7)
        .left().marginLeft(7)
        .width(20).aspectRatio()
        
        bedTimeRatingLabel.pin.below(of: bedTimeImageView).marginTop(7)
        .left().marginLeft(7)
        .width(of: titleLabel).sizeToFit()
        
        performanceImageView.pin.below(of: bedTimeRatingLabel).marginTop(7)
        .left().marginLeft(7)
        .width(20).aspectRatio()
        
        performanceRatingLabel.pin.below(of: performanceImageView).marginTop(7)
        .left().marginLeft(7)
        .width(of: titleLabel).sizeToFit()
    }
}
