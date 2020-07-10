//
//  AnnouncementView.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class AnnouncementView: UIView {

    private let titleLabel = UILabel()
    private let contentLabel = UILabel()
    
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
        titleLabel.text = "Title"
        titleLabel.font = .systemFont(ofSize: 17)
        titleLabel.textColor = .red
        addSubview(titleLabel)
        
        contentLabel.text = "content"
        contentLabel.numberOfLines = 0
        addSubview(contentLabel)
    }
    
    func layoutView() {
        titleLabel.pin.top().left().right().margin(15).sizeToFit()
        
        contentLabel.pin.below(of: titleLabel, aligned: .left).marginTop(10)
            .right(15).sizeToFit()
    }
}
