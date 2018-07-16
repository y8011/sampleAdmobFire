//
//  ViewController.swift
//  sampleAdmob
//
//  Created by yuka on 2018/07/16.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

var bannerView: GADBannerView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In this case, we instantiate the banner with desired ad size.
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)  // バナーのサイズは決まってるのでそれによって合わせる
        
        addBannerViewToView(bannerView)
//        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716" // ここを自分のユニットIDに変更する ca-app-pub-6416476542651492/6714550961
        bannerView.adUnitID = "ca-app-pub-6416476542651492/6714550961"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

