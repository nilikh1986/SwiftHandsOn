//
//  HomeDatasourceController+setupNavBar.swift
//  TwitterPrototype
//
//  Created by Patnayak, Nilikh on 10/16/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    func setupNavigationBarItems() {
        setupRemainingNavItems()
        setupLeftNavItems()
        setupRightNavItems()
    }
    
    private func setupRemainingNavItems() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupLeftNavItems() {
        let followButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton()
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        searchButton.addTarget(self, action: #selector(searchButtontapped), for: .touchUpInside)
        
        let composeButton = UIButton()
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        composeButton.addTarget(self, action: #selector(composeButtonTapped), for: .touchUpInside)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton), UIBarButtonItem(customView: composeButton)]
    }
    
    @objc private func followButtonTapped() {
        print("follow tapped")
    }
    
    @objc private func searchButtontapped() {
        print("search tapped")
    }
    
    
    @objc private func composeButtonTapped() {
        print("compse tapped")
    }    
}

