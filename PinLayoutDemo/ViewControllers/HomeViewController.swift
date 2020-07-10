//
//  HomeViewController.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let notificationImageView = UIImageView()
    private let announcementView = AnnouncementView()
    private let sleepLogView = SleepLogView()
    private let poopLogView = PoopLogView()
    private let introduceButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layoutView()
    }
    
    func initUI() {
        view.backgroundColor = .lightGray
        view.addSubview(scrollView)
        notificationImageView.image = UIImage(named: "icon-announcer")
        scrollView.addSubview(notificationImageView)
        
        announcementView.layer.cornerRadius = 10
        announcementView.backgroundColor = .white
        scrollView.addSubview(announcementView)
        
        sleepLogView.layer.cornerRadius = 10
        sleepLogView.backgroundColor = .white
        scrollView.addSubview(sleepLogView)
        
        poopLogView.layer.cornerRadius = 10
        poopLogView.backgroundColor = .white
        scrollView.addSubview(poopLogView)
        
        introduceButton.setTitle("go to introduction", for: .normal)
        introduceButton.setTitleColor(.red, for: .normal)
        introduceButton.layer.cornerRadius = 10
        introduceButton.backgroundColor = .white
        scrollView.addSubview(introduceButton)
    }
    
    func layoutView() {
        scrollView.pin.all()
        
        notificationImageView.pin.topLeft(15).width(100).aspectRatio()
        
        announcementView.pin.topRight(15).bottomLeft(to: notificationImageView.anchor.bottomRight)
        
        sleepLogView.pin.below(of: notificationImageView).height(210).marginTop(10)
        .left().right().marginHorizontal(15)
        
        poopLogView.pin.below(of: sleepLogView).height(110).marginTop(10)
               .left().right().marginHorizontal(15)
        
        introduceButton.pin.below(of: poopLogView).height(57).marginTop(10)
        .left().right().marginHorizontal(15)
        
        scrollView.contentSize.height = introduceButton.frame.maxY
    }
}
